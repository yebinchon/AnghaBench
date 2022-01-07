
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int open_wait; } ;
struct moxa_port {TYPE_1__ port; } ;
struct ktermios {int c_cflag; } ;


 int CLOCAL ;
 scalar_t__ C_CLOCAL (struct tty_struct*) ;
 int moxa_set_tty_param (struct tty_struct*,struct ktermios*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void moxa_set_termios(struct tty_struct *tty,
  struct ktermios *old_termios)
{
 struct moxa_port *ch = tty->driver_data;

 if (ch == ((void*)0))
  return;
 moxa_set_tty_param(tty, old_termios);
 if (!(old_termios->c_cflag & CLOCAL) && C_CLOCAL(tty))
  wake_up_interruptible(&ch->port.open_wait);
}
