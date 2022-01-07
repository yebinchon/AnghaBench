
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct vc_data {int vc_hi_font_mask; int vc_can_do_color; TYPE_1__* vc_sw; } ;
typedef int a ;
struct TYPE_2__ {int (* con_invert_region ) (struct vc_data*,unsigned short*,int) ;} ;


 scalar_t__ DO_UPDATE (struct vc_data*) ;
 int WARN_CONSOLE_UNLOCKED () ;
 int do_update_region (struct vc_data*,unsigned long,int) ;
 int scr_readw (int*) ;
 int scr_writew (int,int*) ;
 unsigned short* screenpos (struct vc_data*,int,int) ;
 int stub1 (struct vc_data*,unsigned short*,int) ;

void invert_screen(struct vc_data *vc, int offset, int count, int viewed)
{
 unsigned short *p;

 WARN_CONSOLE_UNLOCKED();

 count /= 2;
 p = screenpos(vc, offset, viewed);
 if (vc->vc_sw->con_invert_region)
  vc->vc_sw->con_invert_region(vc, p, count);

 else {
  u16 *q = p;
  int cnt = count;
  u16 a;

  if (!vc->vc_can_do_color) {
   while (cnt--) {
       a = scr_readw(q);
       a ^= 0x0800;
       scr_writew(a, q);
       q++;
   }
  } else if (vc->vc_hi_font_mask == 0x100) {
   while (cnt--) {
    a = scr_readw(q);
    a = ((a) & 0x11ff) | (((a) & 0xe000) >> 4) | (((a) & 0x0e00) << 4);
    scr_writew(a, q);
    q++;
   }
  } else {
   while (cnt--) {
    a = scr_readw(q);
    a = ((a) & 0x88ff) | (((a) & 0x7000) >> 4) | (((a) & 0x0700) << 4);
    scr_writew(a, q);
    q++;
   }
  }
 }

 if (DO_UPDATE(vc))
  do_update_region(vc, (unsigned long) p, count);
}
