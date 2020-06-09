//
//  ContentView.swift
//  chapter19.12
//
//  Created by HEE TAE YANG on 2020/06/08.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        MyVStack {
            Text("1")
            Text("1")
            HStack {
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
            }
        }
        
    }
}

struct MyVStack<Content: View>: View {
    
    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(spacing: 0) {
            content()
        }
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
