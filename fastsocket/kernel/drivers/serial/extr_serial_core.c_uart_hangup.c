
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int flags; int mutex; int delta_msr_wait; int open_wait; scalar_t__ count; } ;
struct uart_state {TYPE_1__* uart_port; struct tty_port port; } ;
struct tty_struct {struct uart_state* driver_data; } ;
struct TYPE_2__ {int line; } ;


 int ASYNCB_NORMAL_ACTIVE ;
 int ASYNC_NORMAL_ACTIVE ;
 int BUG_ON (int) ;
 int clear_bit (int ,int*) ;
 int kernel_locked () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int tty_port_tty_set (struct tty_port*,int *) ;
 int uart_flush_buffer (struct tty_struct*) ;
 int uart_shutdown (struct uart_state*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void uart_hangup(struct tty_struct *tty)
{
 struct uart_state *state = tty->driver_data;
 struct tty_port *port = &state->port;

 BUG_ON(!kernel_locked());
 pr_debug("uart_hangup(%d)\n", state->uart_port->line);

 mutex_lock(&port->mutex);
 if (port->flags & ASYNC_NORMAL_ACTIVE) {
  uart_flush_buffer(tty);
  uart_shutdown(state);
  port->count = 0;
  clear_bit(ASYNCB_NORMAL_ACTIVE, &port->flags);
  tty_port_tty_set(port, ((void*)0));
  wake_up_interruptible(&port->open_wait);
  wake_up_interruptible(&port->delta_msr_wait);
 }
 mutex_unlock(&port->mutex);
}
