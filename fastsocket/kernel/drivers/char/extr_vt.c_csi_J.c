
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_scr_end; int vc_pos; unsigned int vc_y; unsigned int vc_x; unsigned int vc_cols; unsigned int vc_rows; int vc_origin; unsigned short* vc_screenbuf; int vc_screenbuf_size; scalar_t__ vc_need_wrap; int vc_video_erase_char; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_clear ) (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;


 int CON_IS_VISIBLE (struct vc_data*) ;
 int DO_UPDATE (struct vc_data*) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 int set_origin (struct vc_data*) ;
 int stub1 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ;
 int stub2 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ;
 int stub3 (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int stub4 (struct vc_data*,unsigned int,unsigned int,int,unsigned int) ;
 int stub5 (struct vc_data*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int update_screen (struct vc_data*) ;

__attribute__((used)) static void csi_J(struct vc_data *vc, int vpar)
{
 unsigned int count;
 unsigned short * start;

 switch (vpar) {
  case 0:
   count = (vc->vc_scr_end - vc->vc_pos) >> 1;
   start = (unsigned short *)vc->vc_pos;
   if (DO_UPDATE(vc)) {

    vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1,
           vc->vc_cols - vc->vc_x);
    vc->vc_sw->con_clear(vc, vc->vc_y + 1, 0,
           vc->vc_rows - vc->vc_y - 1,
           vc->vc_cols);
   }
   break;
  case 1:
   count = ((vc->vc_pos - vc->vc_origin) >> 1) + 1;
   start = (unsigned short *)vc->vc_origin;
   if (DO_UPDATE(vc)) {

    vc->vc_sw->con_clear(vc, 0, 0, vc->vc_y,
           vc->vc_cols);
    vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
           vc->vc_x + 1);
   }
   break;
  case 3:
   scr_memsetw(vc->vc_screenbuf, vc->vc_video_erase_char,
        vc->vc_screenbuf_size >> 1);
   set_origin(vc);
   if (CON_IS_VISIBLE(vc))
    update_screen(vc);

  case 2:
   count = vc->vc_cols * vc->vc_rows;
   start = (unsigned short *)vc->vc_origin;
   if (DO_UPDATE(vc))
    vc->vc_sw->con_clear(vc, 0, 0,
           vc->vc_rows,
           vc->vc_cols);
   break;
  default:
   return;
 }
 scr_memsetw(start, vc->vc_video_erase_char, 2 * count);
 vc->vc_need_wrap = 0;
}
