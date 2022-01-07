
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int count; int closing; int name; struct async_struct* driver_data; } ;
struct serial_state {int count; } ;
struct file {int dummy; } ;
struct async_struct {int flags; scalar_t__ closing_wait; int close_wait; int open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; int * tty; scalar_t__ event; int timeout; int read_status_mask; int line; struct serial_state* state; } ;
struct TYPE_2__ {void* intreq; void* intena; } ;


 int ASYNC_CLOSING ;
 scalar_t__ ASYNC_CLOSING_WAIT_NONE ;
 int ASYNC_INITIALIZED ;
 int ASYNC_NORMAL_ACTIVE ;
 int DBG_CNT (char*) ;
 void* IF_RBF ;
 int UART_LSR_DR ;
 TYPE_1__ custom ;
 int jiffies_to_msecs (scalar_t__) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int msleep_interruptible (int ) ;
 int printk (char*,int,...) ;
 int rs_flush_buffer (struct tty_struct*) ;
 int rs_wait_until_sent (struct tty_struct*,int ) ;
 scalar_t__ serial_paranoia_check (struct async_struct*,int ,char*) ;
 int shutdown (struct async_struct*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_wait_until_sent (struct tty_struct*,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_close(struct tty_struct *tty, struct file * filp)
{
 struct async_struct * info = tty->driver_data;
 struct serial_state *state;
 unsigned long flags;

 if (!info || serial_paranoia_check(info, tty->name, "rs_close"))
  return;

 state = info->state;

 local_irq_save(flags);

 if (tty_hung_up_p(filp)) {
  DBG_CNT("before DEC-hung");
  local_irq_restore(flags);
  return;
 }




 if ((tty->count == 1) && (state->count != 1)) {







  printk("rs_close: bad serial port count; tty->count is 1, "
         "state->count is %d\n", state->count);
  state->count = 1;
 }
 if (--state->count < 0) {
  printk("rs_close: bad serial port count for ttys%d: %d\n",
         info->line, state->count);
  state->count = 0;
 }
 if (state->count) {
  DBG_CNT("before DEC-2");
  local_irq_restore(flags);
  return;
 }
 info->flags |= ASYNC_CLOSING;




 tty->closing = 1;
 if (info->closing_wait != ASYNC_CLOSING_WAIT_NONE)
  tty_wait_until_sent(tty, info->closing_wait);






 info->read_status_mask &= ~UART_LSR_DR;
 if (info->flags & ASYNC_INITIALIZED) {

         custom.intena = IF_RBF;
  mb();

  custom.intreq = IF_RBF;
  mb();






  rs_wait_until_sent(tty, info->timeout);
 }
 shutdown(info);
 rs_flush_buffer(tty);

 tty_ldisc_flush(tty);
 tty->closing = 0;
 info->event = 0;
 info->tty = ((void*)0);
 if (info->blocked_open) {
  if (info->close_delay) {
   msleep_interruptible(jiffies_to_msecs(info->close_delay));
  }
  wake_up_interruptible(&info->open_wait);
 }
 info->flags &= ~(ASYNC_NORMAL_ACTIVE|ASYNC_CLOSING);
 wake_up_interruptible(&info->close_wait);
 local_irq_restore(flags);
}
