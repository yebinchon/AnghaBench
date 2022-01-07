
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct Port {int State; } ;


 int RIO_THROTTLE_RX ;
 int func_enter () ;
 int func_exit () ;

__attribute__((used)) static void rio_unthrottle(struct tty_struct *tty)
{
 struct Port *port = (struct Port *) tty->driver_data;

 func_enter();





 port->State &= ~RIO_THROTTLE_RX;

 func_exit();
 return;
}
