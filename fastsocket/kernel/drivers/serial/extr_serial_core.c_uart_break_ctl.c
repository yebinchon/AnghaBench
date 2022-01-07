
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; } ;
struct uart_state {struct uart_port* uart_port; struct tty_port port; } ;
struct uart_port {scalar_t__ type; TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* break_ctl ) (struct uart_port*,int) ;} ;


 scalar_t__ PORT_UNKNOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct uart_port*,int) ;

__attribute__((used)) static int uart_break_ctl(struct tty_struct *tty, int break_state)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;
 struct uart_port *uport = state->uart_port;

 mutex_lock(&port->mutex);

 if (uport->type != PORT_UNKNOWN)
  uport->ops->break_ctl(uport, break_state);

 mutex_unlock(&port->mutex);
 return 0;
}
