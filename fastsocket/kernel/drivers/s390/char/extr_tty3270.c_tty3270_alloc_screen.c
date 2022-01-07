
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty3270_line {int dummy; } ;
struct tty3270_cell {int dummy; } ;
struct TYPE_3__ {int rows; int cols; } ;
struct tty3270 {TYPE_2__* screen; TYPE_1__ view; } ;
struct TYPE_4__ {struct TYPE_4__* cells; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (TYPE_2__*) ;
 void* kzalloc (unsigned long,int ) ;

__attribute__((used)) static int
tty3270_alloc_screen(struct tty3270 *tp)
{
 unsigned long size;
 int lines;

 size = sizeof(struct tty3270_line) * (tp->view.rows - 2);
 tp->screen = kzalloc(size, GFP_KERNEL);
 if (!tp->screen)
  goto out_err;
 for (lines = 0; lines < tp->view.rows - 2; lines++) {
  size = sizeof(struct tty3270_cell) * tp->view.cols;
  tp->screen[lines].cells = kzalloc(size, GFP_KERNEL);
  if (!tp->screen[lines].cells)
   goto out_screen;
 }
 return 0;
out_screen:
 while (lines--)
  kfree(tp->screen[lines].cells);
 kfree(tp->screen);
out_err:
 return -ENOMEM;
}
