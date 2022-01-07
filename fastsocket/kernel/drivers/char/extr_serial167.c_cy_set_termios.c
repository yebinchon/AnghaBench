
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; scalar_t__ stopped; int name; struct cyclades_port* driver_data; } ;
struct ktermios {int c_cflag; } ;
struct cyclades_port {int open_wait; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CLOCAL ;
 int CRTSCTS ;
 int config_setup (struct cyclades_port*) ;
 int cy_start (struct tty_struct*) ;
 int printk (char*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cy_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct cyclades_port *info = tty->driver_data;





 if (tty->termios->c_cflag == old_termios->c_cflag)
  return;
 config_setup(info);

 if ((old_termios->c_cflag & CRTSCTS) &&
     !(tty->termios->c_cflag & CRTSCTS)) {
  tty->stopped = 0;
  cy_start(tty);
 }





}
