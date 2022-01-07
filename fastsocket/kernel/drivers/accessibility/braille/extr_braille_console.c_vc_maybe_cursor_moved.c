
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_x; scalar_t__ vc_y; } ;


 scalar_t__ lastvc_x ;
 scalar_t__ lastvc_y ;
 int vc_follow_cursor (struct vc_data*) ;

__attribute__((used)) static void vc_maybe_cursor_moved(struct vc_data *vc)
{
 if (vc->vc_x != lastvc_x || vc->vc_y != lastvc_y)
  vc_follow_cursor(vc);
}
