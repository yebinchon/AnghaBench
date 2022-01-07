
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct a2232_port* driver_data; } ;
struct a2232_port {scalar_t__ throttle_input; } ;



__attribute__((used)) static void a2232_unthrottle(struct tty_struct *tty)
{

 struct a2232_port *port = tty->driver_data;
 port->throttle_input = 0;
}
