
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int left; unsigned int top; unsigned int right; unsigned int bottom; } ;
struct vino_channel_settings {unsigned int decimation; int line_size; TYPE_1__ clipping; } ;


 int dprintk (char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,...) ;
 unsigned int max (unsigned int,unsigned int) ;
 int vino_set_clipping (struct vino_channel_settings*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void vino_set_scaling(struct vino_channel_settings *vcs,
        unsigned int w, unsigned int h)
{
 unsigned int x, y, curw, curh, d;

 x = vcs->clipping.left;
 y = vcs->clipping.top;
 curw = vcs->clipping.right - vcs->clipping.left;
 curh = vcs->clipping.bottom - vcs->clipping.top;

 d = max(curw / w, curh / h);

 dprintk("scaling w: %d, h: %d, curw: %d, curh: %d, d: %d\n",
  w, h, curw, curh, d);

 if (d < 1) {
  d = 1;
 } else if (d > 8) {
  d = 8;
 }

 vcs->decimation = d;
 vino_set_clipping(vcs, x, y, w * d, h * d);

 dprintk("scaling %d, %d, %d, %d / %d - %d\n", vcs->clipping.left,
  vcs->clipping.top, vcs->clipping.right, vcs->clipping.bottom,
  vcs->decimation, vcs->line_size);
}
