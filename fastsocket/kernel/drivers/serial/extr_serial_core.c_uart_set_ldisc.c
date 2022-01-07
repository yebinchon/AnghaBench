
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_state {struct uart_port* uart_port; } ;
struct uart_port {TYPE_1__* ops; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int (* set_ldisc ) (struct uart_port*) ;} ;


 int stub1 (struct uart_port*) ;

__attribute__((used)) static void uart_set_ldisc(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct uart_port *uport = state->uart_port;

 if (uport->ops->set_ldisc)
  uport->ops->set_ldisc(uport);
}
