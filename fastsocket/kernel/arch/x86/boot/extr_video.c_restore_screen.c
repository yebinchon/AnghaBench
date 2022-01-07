
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct biosregs {int ah; int dl; int dh; } ;
typedef int addr_t ;
struct TYPE_4__ {int orig_video_cols; int orig_video_lines; } ;
struct TYPE_6__ {TYPE_1__ screen_info; } ;
struct TYPE_5__ {int y; int x; int curx; int cury; int * data; } ;


 TYPE_3__ boot_params ;
 int copy_to_fs (int,int *,int) ;
 scalar_t__ graphic_mode ;
 int initregs (struct biosregs*) ;
 int intcall (int,struct biosregs*,int *) ;
 TYPE_2__ saved ;
 int set_fs (int ) ;
 int video_segment ;

__attribute__((used)) static void restore_screen(void)
{

 int xs = boot_params.screen_info.orig_video_cols;
 int ys = boot_params.screen_info.orig_video_lines;
 int y;
 addr_t dst = 0;
 u16 *src = saved.data;
 struct biosregs ireg;

 if (graphic_mode)
  return;

 if (!src)
  return;



 set_fs(video_segment);
 for (y = 0; y < ys; y++) {
  int npad;

  if (y < saved.y) {
   int copy = (xs < saved.x) ? xs : saved.x;
   copy_to_fs(dst, src, copy*sizeof(u16));
   dst += copy*sizeof(u16);
   src += saved.x;
   npad = (xs < saved.x) ? 0 : xs-saved.x;
  } else {
   npad = xs;
  }



  asm volatile("pushw %%es ; "
        "movw %2,%%es ; "
        "shrw %%cx ; "
        "jnc 1f ; "
        "stosw \n\t"
        "1: rep;stosl ; "
        "popw %%es"
        : "+D" (dst), "+c" (npad)
        : "bdS" (video_segment),
          "a" (0x07200720));
 }


 initregs(&ireg);
 ireg.ah = 0x02;
 ireg.dh = saved.cury;
 ireg.dl = saved.curx;
 intcall(0x10, &ireg, ((void*)0));
}
