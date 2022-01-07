
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_post_div(int value)
{
 int post_div;
 switch (value) {
 case 1: post_div = 0; break;
 case 2: post_div = 1; break;
 case 3: post_div = 4; break;
 case 4: post_div = 2; break;
 case 6: post_div = 6; break;
 case 8: post_div = 3; break;
 case 12: post_div = 7; break;
 case 16:
 default: post_div = 5; break;
 }
 return post_div;
}
