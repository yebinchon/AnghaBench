
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int mutex; int count; } ;
struct uart_state {TYPE_1__* uart_port; struct tty_port port; } ;
struct uart_driver {struct uart_state* state; } ;
struct TYPE_2__ {int flags; } ;


 int ENXIO ;
 int ERESTARTSYS ;
 struct uart_state* ERR_PTR (int) ;
 int UPF_DEAD ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct uart_state *uart_get(struct uart_driver *drv, int line)
{
 struct uart_state *state;
 struct tty_port *port;
 int ret = 0;

 state = drv->state + line;
 port = &state->port;
 if (mutex_lock_interruptible(&port->mutex)) {
  ret = -ERESTARTSYS;
  goto err;
 }

 port->count++;
 if (!state->uart_port || state->uart_port->flags & UPF_DEAD) {
  ret = -ENXIO;
  goto err_unlock;
 }
 return state;

 err_unlock:
 port->count--;
 mutex_unlock(&port->mutex);
 err:
 return ERR_PTR(ret);
}
