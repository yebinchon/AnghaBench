
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int count; int flags; int mutex; } ;
struct uart_state {TYPE_2__* uart_port; struct tty_port port; } ;
struct uart_driver {int dummy; } ;
struct tty_struct {int index; int low_latency; scalar_t__ alt_speed; struct uart_state* driver_data; TYPE_1__* driver; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int flags; struct uart_state* state; } ;
struct TYPE_3__ {int num; scalar_t__ driver_state; } ;


 int ASYNCB_NORMAL_ACTIVE ;
 int ASYNC_NORMAL_ACTIVE ;
 int BUG_ON (int) ;
 int EAGAIN ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct uart_state*) ;
 int PTR_ERR (struct uart_state*) ;
 int UPF_LOW_LATENCY ;
 int kernel_locked () ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int) ;
 int set_bit (int ,int*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_port_tty_set (struct tty_port*,struct tty_struct*) ;
 int uart_block_til_ready (struct file*,struct uart_state*) ;
 int uart_change_pm (struct uart_state*,int ) ;
 struct uart_state* uart_get (struct uart_driver*,int) ;
 int uart_startup (struct uart_state*,int ) ;
 int uart_update_termios (struct uart_state*) ;

__attribute__((used)) static int uart_open(struct tty_struct *tty, struct file *filp)
{
 struct uart_driver *drv = (struct uart_driver *)tty->driver->driver_state;
 struct uart_state *state;
 struct tty_port *port;
 int retval, line = tty->index;

 BUG_ON(!kernel_locked());
 pr_debug("uart_open(%d) called\n", line);






 retval = -ENODEV;
 if (line >= tty->driver->num)
  goto fail;
 state = uart_get(drv, line);
 if (IS_ERR(state)) {
  retval = PTR_ERR(state);
  goto fail;
 }
 port = &state->port;






 tty->driver_data = state;
 state->uart_port->state = state;
 tty->low_latency = (state->uart_port->flags & UPF_LOW_LATENCY) ? 1 : 0;
 tty->alt_speed = 0;
 tty_port_tty_set(port, tty);




 if (tty_hung_up_p(filp)) {
  retval = -EAGAIN;
  port->count--;
  mutex_unlock(&port->mutex);
  goto fail;
 }




 if (port->count == 1)
  uart_change_pm(state, 0);




 retval = uart_startup(state, 0);




 if (retval == 0)
  retval = uart_block_til_ready(filp, state);
 mutex_unlock(&port->mutex);




 if (retval == 0 && !(port->flags & ASYNC_NORMAL_ACTIVE)) {
  set_bit(ASYNCB_NORMAL_ACTIVE, &port->flags);

  uart_update_termios(state);
 }

fail:
 return retval;
}
