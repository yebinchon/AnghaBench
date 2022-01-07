
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_port {int flags; int mutex; TYPE_1__* tty; } ;
struct uart_state {struct tty_port port; } ;
struct uart_port {int line; int lock; int mctrl; struct uart_ops* ops; TYPE_2__* cons; scalar_t__ suspended; int irq; int dev; } ;
struct uart_ops {int (* startup ) (struct uart_port*) ;int (* start_tx ) (struct uart_port*) ;int (* set_mctrl ) (struct uart_port*,int ) ;int (* set_termios ) (struct uart_port*,struct ktermios*,int *) ;} ;
struct uart_match {struct uart_driver* member_1; struct uart_port* member_0; } ;
struct uart_driver {struct uart_state* state; } ;
struct ktermios {scalar_t__ c_cflag; int c_ospeed; int c_ispeed; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ cflag; } ;
struct TYPE_3__ {struct ktermios* termios; } ;


 int ASYNCB_INITIALIZED ;
 int ASYNCB_SUSPENDED ;
 int ASYNC_SUSPENDED ;
 int clear_bit (int ,int*) ;
 int console_start (TYPE_2__*) ;
 int console_suspend_enabled ;
 struct device* device_find_child (int ,struct uart_match*,int ) ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int disable_irq_wake (int ) ;
 int memset (struct ktermios*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serial_match_port ;
 int set_bit (int ,int*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*,struct ktermios*,int *) ;
 int stub2 (struct uart_port*,struct ktermios*,int *) ;
 int stub3 (struct uart_port*,int ) ;
 int stub4 (struct uart_port*) ;
 int stub5 (struct uart_port*,int ) ;
 int stub6 (struct uart_port*) ;
 int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_input_baud_rate (struct ktermios*) ;
 int uart_change_pm (struct uart_state*,int ) ;
 int uart_change_speed (struct uart_state*,int *) ;
 scalar_t__ uart_console (struct uart_port*) ;
 int uart_shutdown (struct uart_state*) ;

int uart_resume_port(struct uart_driver *drv, struct uart_port *uport)
{
 struct uart_state *state = drv->state + uport->line;
 struct tty_port *port = &state->port;
 struct device *tty_dev;
 struct uart_match match = {uport, drv};
 struct ktermios termios;

 mutex_lock(&port->mutex);

 if (!console_suspend_enabled && uart_console(uport)) {




  memset(&termios, 0, sizeof(struct ktermios));
  termios.c_cflag = uport->cons->cflag;



  if (termios.c_cflag == 0)
   termios = *state->port.tty->termios;
  else {
   termios.c_ispeed = termios.c_ospeed =
    tty_termios_input_baud_rate(&termios);
   termios.c_ispeed = termios.c_ospeed =
    tty_termios_baud_rate(&termios);
  }
  uport->ops->set_termios(uport, &termios, ((void*)0));
  mutex_unlock(&port->mutex);
  return 0;
 }

 tty_dev = device_find_child(uport->dev, &match, serial_match_port);
 if (!uport->suspended && device_may_wakeup(tty_dev)) {
  disable_irq_wake(uport->irq);
  mutex_unlock(&port->mutex);
  return 0;
 }
 uport->suspended = 0;




 if (uart_console(uport)) {
  uart_change_pm(state, 0);
  uport->ops->set_termios(uport, &termios, ((void*)0));
  console_start(uport->cons);
 }

 if (port->flags & ASYNC_SUSPENDED) {
  const struct uart_ops *ops = uport->ops;
  int ret;

  uart_change_pm(state, 0);
  spin_lock_irq(&uport->lock);
  ops->set_mctrl(uport, 0);
  spin_unlock_irq(&uport->lock);
  ret = ops->startup(uport);
  if (ret == 0) {
   uart_change_speed(state, ((void*)0));
   spin_lock_irq(&uport->lock);
   ops->set_mctrl(uport, uport->mctrl);
   ops->start_tx(uport);
   spin_unlock_irq(&uport->lock);
   set_bit(ASYNCB_INITIALIZED, &port->flags);
  } else {





   uart_shutdown(state);
  }

  clear_bit(ASYNCB_SUSPENDED, &port->flags);
 }

 mutex_unlock(&port->mutex);

 return 0;
}
