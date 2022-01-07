
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {scalar_t__ type; int flags; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* config_port ) (struct uart_port*,int) ;int (* release_port ) (struct uart_port*) ;} ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int EPERM ;
 int ERESTARTSYS ;
 scalar_t__ PORT_UNKNOWN ;
 int UART_CONFIG_IRQ ;
 int UART_CONFIG_TYPE ;
 int UPF_AUTO_IRQ ;
 int capable (int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct uart_port*) ;
 int stub2 (struct uart_port*,int) ;
 int tty_port_users (struct tty_port*) ;
 int uart_shutdown (struct uart_state*) ;
 int uart_startup (struct uart_state*,int) ;

__attribute__((used)) static int uart_do_autoconfig(struct uart_state *state)
{
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 int flags, ret;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;






 if (mutex_lock_interruptible(&port->mutex))
  return -ERESTARTSYS;

 ret = -EBUSY;
 if (tty_port_users(port) == 1) {
  uart_shutdown(state);





  if (uport->type != PORT_UNKNOWN)
   uport->ops->release_port(uport);

  flags = UART_CONFIG_TYPE;
  if (uport->flags & UPF_AUTO_IRQ)
   flags |= UART_CONFIG_IRQ;





  uport->ops->config_port(uport, flags);

  ret = uart_startup(state, 1);
 }
 mutex_unlock(&port->mutex);
 return ret;
}
