
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rows; } ;
struct tty3270 {TYPE_2__* screen; TYPE_1__ view; } ;
struct TYPE_4__ {struct TYPE_4__* cells; } ;


 int kfree (TYPE_2__*) ;

__attribute__((used)) static void
tty3270_free_screen(struct tty3270 *tp)
{
 int lines;

 for (lines = 0; lines < tp->view.rows - 2; lines++)
  kfree(tp->screen[lines].cells);
 kfree(tp->screen);
}
