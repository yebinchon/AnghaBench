
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vc_data {int vc_screenbuf_size; unsigned short vc_complement_mask; int vc_cols; TYPE_1__* vc_sw; } ;
struct TYPE_2__ {int (* con_putc ) (struct vc_data*,unsigned short,unsigned short,unsigned short) ;} ;


 scalar_t__ DO_UPDATE (struct vc_data*) ;
 int WARN_CONSOLE_UNLOCKED () ;
 unsigned short scr_readw (unsigned short*) ;
 int scr_writew (unsigned short,unsigned short*) ;
 unsigned short* screenpos (struct vc_data*,int,int) ;
 int stub1 (struct vc_data*,unsigned short,unsigned short,unsigned short) ;
 int stub2 (struct vc_data*,unsigned short,unsigned short,unsigned short) ;

void complement_pos(struct vc_data *vc, int offset)
{
 static int old_offset = -1;
 static unsigned short old;
 static unsigned short oldx, oldy;

 WARN_CONSOLE_UNLOCKED();

 if (old_offset != -1 && old_offset >= 0 &&
     old_offset < vc->vc_screenbuf_size) {
  scr_writew(old, screenpos(vc, old_offset, 1));
  if (DO_UPDATE(vc))
   vc->vc_sw->con_putc(vc, old, oldy, oldx);
 }

 old_offset = offset;

 if (offset != -1 && offset >= 0 &&
     offset < vc->vc_screenbuf_size) {
  unsigned short new;
  unsigned short *p;
  p = screenpos(vc, offset, 1);
  old = scr_readw(p);
  new = old ^ vc->vc_complement_mask;
  scr_writew(new, p);
  if (DO_UPDATE(vc)) {
   oldx = (offset >> 1) % vc->vc_cols;
   oldy = (offset >> 1) / vc->vc_cols;
   vc->vc_sw->con_putc(vc, new, oldy, oldx);
  }
 }

}
