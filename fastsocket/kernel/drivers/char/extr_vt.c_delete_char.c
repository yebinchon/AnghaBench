
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {unsigned int vc_x; unsigned int vc_cols; int vc_video_erase_char; unsigned short vc_attr; int vc_y; TYPE_1__* vc_sw; scalar_t__ vc_need_wrap; scalar_t__ vc_pos; } ;
struct TYPE_2__ {int (* con_putc ) (struct vc_data*,int,int ,int) ;int (* con_bmove ) (struct vc_data*,int ,unsigned int,int ,unsigned int,int,unsigned int) ;} ;


 scalar_t__ DO_UPDATE (struct vc_data*) ;
 int scr_memsetw (unsigned short*,int,unsigned int) ;
 int scr_readw (unsigned short*) ;
 int scr_writew (int ,unsigned short*) ;
 int stub1 (struct vc_data*,int ,unsigned int,int ,unsigned int,int,unsigned int) ;
 int stub2 (struct vc_data*,int,int ,int) ;

__attribute__((used)) static void delete_char(struct vc_data *vc, unsigned int nr)
{
 unsigned int i = vc->vc_x;
 unsigned short *p = (unsigned short *)vc->vc_pos;

 while (++i <= vc->vc_cols - nr) {
  scr_writew(scr_readw(p+nr), p);
  p++;
 }
 scr_memsetw(p, vc->vc_video_erase_char, nr * 2);
 vc->vc_need_wrap = 0;
 if (DO_UPDATE(vc)) {
  unsigned short oldattr = vc->vc_attr;
  vc->vc_sw->con_bmove(vc, vc->vc_y, vc->vc_x + nr, vc->vc_y, vc->vc_x, 1,
         vc->vc_cols - vc->vc_x - nr);
  vc->vc_attr = vc->vc_video_erase_char >> 8;
  while (nr--)
   vc->vc_sw->con_putc(vc, vc->vc_video_erase_char, vc->vc_y,
         vc->vc_cols - 1 - nr);
  vc->vc_attr = oldattr;
 }
}
