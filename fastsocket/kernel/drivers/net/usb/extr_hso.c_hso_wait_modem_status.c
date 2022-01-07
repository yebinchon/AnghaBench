
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; } ;
struct hso_tiocmget {int waitq; int icount; } ;
struct hso_serial {int serial_lock; struct hso_tiocmget* tiocmget; } ;
struct TYPE_4__ {int state; } ;


 int DECLARE_WAITQUEUE (int ,TYPE_1__*) ;
 int ENOENT ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 unsigned long TIOCM_CD ;
 unsigned long TIOCM_DSR ;
 unsigned long TIOCM_RNG ;
 int add_wait_queue (int *,int *) ;
 TYPE_1__* current ;
 int memcpy (struct uart_icount*,int *,int) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait ;

__attribute__((used)) static int
hso_wait_modem_status(struct hso_serial *serial, unsigned long arg)
{
 DECLARE_WAITQUEUE(wait, current);
 struct uart_icount cprev, cnow;
 struct hso_tiocmget *tiocmget;
 int ret;

 tiocmget = serial->tiocmget;
 if (!tiocmget)
  return -ENOENT;



 spin_lock_irq(&serial->serial_lock);
 memcpy(&cprev, &tiocmget->icount, sizeof(struct uart_icount));
 spin_unlock_irq(&serial->serial_lock);
 add_wait_queue(&tiocmget->waitq, &wait);
 for (;;) {
  spin_lock_irq(&serial->serial_lock);
  memcpy(&cnow, &tiocmget->icount, sizeof(struct uart_icount));
  spin_unlock_irq(&serial->serial_lock);
  set_current_state(TASK_INTERRUPTIBLE);
  if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
      ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
      ((arg & TIOCM_CD) && (cnow.dcd != cprev.dcd))) {
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
 remove_wait_queue(&tiocmget->waitq, &wait);

 return ret;
}
