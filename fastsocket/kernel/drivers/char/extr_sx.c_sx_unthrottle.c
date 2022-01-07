
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct sx_port* driver_data; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ port; } ;
struct sx_port {TYPE_2__ gs; } ;


 int SX_RX_THROTTLE ;
 int func_enter2 () ;
 int func_exit () ;

__attribute__((used)) static void sx_unthrottle(struct tty_struct *tty)
{
 struct sx_port *port = tty->driver_data;

 func_enter2();




 port->gs.port.flags &= ~SX_RX_THROTTLE;
 func_exit();
 return;
}
