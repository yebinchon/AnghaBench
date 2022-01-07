
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * driver_data; } ;
struct tty3270 {int view; TYPE_1__* kbd; struct tty_struct* tty; } ;
struct raw3270_view {int dummy; } ;
struct TYPE_2__ {int * tty; } ;


 int raw3270_put_view (int *) ;
 int tty_hangup (struct tty_struct*) ;

__attribute__((used)) static void
tty3270_release(struct raw3270_view *view)
{
 struct tty3270 *tp;
 struct tty_struct *tty;

 tp = (struct tty3270 *) view;
 tty = tp->tty;
 if (tty) {
  tty->driver_data = ((void*)0);
  tp->tty = tp->kbd->tty = ((void*)0);
  tty_hangup(tty);
  raw3270_put_view(&tp->view);
 }
}
