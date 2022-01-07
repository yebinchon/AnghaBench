
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int count; int * driver_data; } ;
struct tty3270 {int view; TYPE_1__* kbd; int tty; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int * tty; } ;


 int raw3270_put_view (int *) ;

__attribute__((used)) static void
tty3270_close(struct tty_struct *tty, struct file * filp)
{
 struct tty3270 *tp;

 if (tty->count > 1)
  return;
 tp = (struct tty3270 *) tty->driver_data;
 if (tp) {
  tty->driver_data = ((void*)0);
  tp->tty = tp->kbd->tty = ((void*)0);
  raw3270_put_view(&tp->view);
 }
}
