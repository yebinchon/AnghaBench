
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {unsigned int vc_cols; unsigned int vc_x; scalar_t__ vc_need_wrap; int vc_video_erase_char; int vc_y; TYPE_1__* vc_sw; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int (* con_clear ) (struct vc_data*,int ,unsigned int,int,unsigned int) ;} ;


 int DO_UPDATE (struct vc_data*) ;
 int scr_memsetw (unsigned short*,int ,int) ;
 int stub1 (struct vc_data*,int ,unsigned int,int,unsigned int) ;
 int stub2 (struct vc_data*,int ,unsigned int,int,unsigned int) ;
 int stub3 (struct vc_data*,int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static void csi_K(struct vc_data *vc, int vpar)
{
 unsigned int count;
 unsigned short * start;

 switch (vpar) {
  case 0:
   count = vc->vc_cols - vc->vc_x;
   start = (unsigned short *)vc->vc_pos;
   if (DO_UPDATE(vc))
    vc->vc_sw->con_clear(vc, vc->vc_y, vc->vc_x, 1,
           vc->vc_cols - vc->vc_x);
   break;
  case 1:
   start = (unsigned short *)(vc->vc_pos - (vc->vc_x << 1));
   count = vc->vc_x + 1;
   if (DO_UPDATE(vc))
    vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
           vc->vc_x + 1);
   break;
  case 2:
   start = (unsigned short *)(vc->vc_pos - (vc->vc_x << 1));
   count = vc->vc_cols;
   if (DO_UPDATE(vc))
    vc->vc_sw->con_clear(vc, vc->vc_y, 0, 1,
           vc->vc_cols);
   break;
  default:
   return;
 }
 scr_memsetw(start, vc->vc_video_erase_char, 2 * count);
 vc->vc_need_wrap = 0;
}
