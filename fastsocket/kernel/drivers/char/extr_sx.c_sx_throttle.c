
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; struct sx_port* driver_data; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_2__ port; } ;
struct sx_port {TYPE_3__ gs; } ;
struct TYPE_4__ {int c_cflag; } ;


 int CRTSCTS ;
 scalar_t__ I_IXOFF (struct tty_struct*) ;
 int SX_RX_THROTTLE ;
 int func_enter2 () ;
 int func_exit () ;

__attribute__((used)) static void sx_throttle(struct tty_struct *tty)
{
 struct sx_port *port = tty->driver_data;

 func_enter2();



 if ((tty->termios->c_cflag & CRTSCTS) || (I_IXOFF(tty))) {
  port->gs.port.flags |= SX_RX_THROTTLE;
 }
 func_exit();
}
