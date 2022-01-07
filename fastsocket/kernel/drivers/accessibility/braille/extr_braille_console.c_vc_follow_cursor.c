
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_x; int vc_y; } ;


 int WIDTH ;
 int lastvc_x ;
 int lastvc_y ;
 int vc_x ;
 int vc_y ;

__attribute__((used)) static void vc_follow_cursor(struct vc_data *vc)
{
 vc_x = vc->vc_x - (vc->vc_x % WIDTH);
 vc_y = vc->vc_y;
 lastvc_x = vc->vc_x;
 lastvc_y = vc->vc_y;
}
