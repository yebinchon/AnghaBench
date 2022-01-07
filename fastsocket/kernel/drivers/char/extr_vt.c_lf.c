
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_y; scalar_t__ vc_bottom; int vc_rows; scalar_t__ vc_need_wrap; scalar_t__ vc_size_row; int vc_pos; int vc_top; } ;


 int notify_write (struct vc_data*,char) ;
 int scrup (struct vc_data*,int ,scalar_t__,int) ;

__attribute__((used)) static void lf(struct vc_data *vc)
{



     if (vc->vc_y + 1 == vc->vc_bottom)
  scrup(vc, vc->vc_top, vc->vc_bottom, 1);
 else if (vc->vc_y < vc->vc_rows - 1) {
      vc->vc_y++;
  vc->vc_pos += vc->vc_size_row;
 }
 vc->vc_need_wrap = 0;
 notify_write(vc, '\n');
}
