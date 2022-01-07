
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; TYPE_1__* driver; struct ktermios* termios; } ;
struct ktermios {int dummy; } ;
struct TYPE_2__ {int flags; int ** termios; } ;


 int TTY_DRIVER_RESET_TERMIOS ;
 int kfree (struct ktermios*) ;

void tty_free_termios(struct tty_struct *tty)
{
 struct ktermios *tp;
 int idx = tty->index;

 if (tty->driver->flags & TTY_DRIVER_RESET_TERMIOS) {

  tp = tty->termios;
  tty->driver->termios[idx] = ((void*)0);
  kfree(tp);
 }
}
