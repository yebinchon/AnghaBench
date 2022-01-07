
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_port {int delta_msr_wait; } ;
struct uart_state {struct tty_port port; struct uart_port* uart_port; } ;
struct uart_port {int lock; int icount; TYPE_1__* ops; } ;
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; scalar_t__ cts; } ;
struct TYPE_6__ {int state; } ;
struct TYPE_5__ {int (* enable_ms ) (struct uart_port*) ;} ;


 int DECLARE_WAITQUEUE (int ,TYPE_2__*) ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 unsigned long TIOCM_CD ;
 unsigned long TIOCM_CTS ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;
 int add_wait_queue (int *,int *) ;
 TYPE_2__* current ;
 int memcpy (struct uart_icount*,int *,int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct uart_port*) ;
 int wait ;

__attribute__((used)) static int
uart_wait_modem_status(struct uart_state *state, unsigned long arg)
{
 struct uart_port *uport = state->uart_port;
 struct tty_port *port = &state->port;
 DECLARE_WAITQUEUE(wait, current);
 struct uart_icount cprev, cnow;
 int ret;




 spin_lock_irq(&uport->lock);
 memcpy(&cprev, &uport->icount, sizeof(struct uart_icount));




 uport->ops->enable_ms(uport);
 spin_unlock_irq(&uport->lock);

 add_wait_queue(&port->delta_msr_wait, &wait);
 for (;;) {
  spin_lock_irq(&uport->lock);
  memcpy(&cnow, &uport->icount, sizeof(struct uart_icount));
  spin_unlock_irq(&uport->lock);

  set_current_state(TASK_INTERRUPTIBLE);

  if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
      ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
      ((arg & TIOCM_CD) && (cnow.dcd != cprev.dcd)) ||
      ((arg & TIOCM_CTS) && (cnow.cts != cprev.cts))) {
   ret = 0;
   break;
  }

  schedule();


  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }

  cprev = cnow;
 }

 current->state = TASK_RUNNING;
 remove_wait_queue(&port->delta_msr_wait, &wait);

 return ret;
}
