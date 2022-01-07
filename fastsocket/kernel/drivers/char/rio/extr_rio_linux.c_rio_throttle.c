
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; scalar_t__ driver_data; } ;
struct Port {int State; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int RIO_THROTTLE_RX ;
 int func_enter () ;
 int func_exit () ;

__attribute__((used)) static void rio_throttle(struct tty_struct *tty)
{
 struct Port *port = (struct Port *) tty->driver_data;

 func_enter();




 if ((tty->termios->c_cflag & CRTSCTS) || (I_IXOFF(tty))) {
  port->State |= RIO_THROTTLE_RX;
 }

 func_exit();
}
