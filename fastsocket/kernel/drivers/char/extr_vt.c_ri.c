
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_y; scalar_t__ vc_top; scalar_t__ vc_need_wrap; scalar_t__ vc_size_row; int vc_pos; int vc_bottom; } ;


 int scrdown (struct vc_data*,scalar_t__,int ,int) ;

__attribute__((used)) static void ri(struct vc_data *vc)
{



 if (vc->vc_y == vc->vc_top)
  scrdown(vc, vc->vc_top, vc->vc_bottom, 1);
 else if (vc->vc_y > 0) {
  vc->vc_y--;
  vc->vc_pos -= vc->vc_size_row;
 }
 vc->vc_need_wrap = 0;
}
