
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ num; int (* open ) (struct tty_struct*) ;int (* close ) (struct tty_struct*) ;} ;
struct tty_struct {int count; int closing; TYPE_5__ ldisc; TYPE_2__* termios; int name; scalar_t__ driver_data; } ;
struct TYPE_6__ {int * tty; } ;
struct m68k_serial {size_t line; int count; int flags; scalar_t__ closing_wait; int close_wait; int open_wait; scalar_t__ close_delay; scalar_t__ blocked_open; TYPE_1__ port; scalar_t__ event; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int ustcnt; } ;
typedef TYPE_3__ m68328_uart ;
struct TYPE_7__ {size_t c_line; } ;


 size_t N_TTY ;
 int S_CLOSING ;
 scalar_t__ S_CLOSING_WAIT_NONE ;
 int S_NORMAL_ACTIVE ;
 int USTCNT_RXEN ;
 int USTCNT_RX_INTR_MASK ;
 int jiffies_to_msecs (scalar_t__) ;
 TYPE_5__* ldiscs ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int msleep_interruptible (int ) ;
 int printk (char*,size_t,...) ;
 int rs_flush_buffer (struct tty_struct*) ;
 scalar_t__ serial_paranoia_check (struct m68k_serial*,int ,char*) ;
 int shutdown (struct m68k_serial*) ;
 int stub1 (struct tty_struct*) ;
 int stub2 (struct tty_struct*) ;
 scalar_t__ tty_hung_up_p (struct file*) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_wait_until_sent (struct tty_struct*,scalar_t__) ;
 TYPE_3__* uart_addr ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rs_close(struct tty_struct *tty, struct file * filp)
{
 struct m68k_serial * info = (struct m68k_serial *)tty->driver_data;
 m68328_uart *uart = &uart_addr[info->line];
 unsigned long flags;

 if (!info || serial_paranoia_check(info, tty->name, "rs_close"))
  return;

 local_irq_save(flags);

 if (tty_hung_up_p(filp)) {
  local_irq_restore(flags);
  return;
 }

 if ((tty->count == 1) && (info->count != 1)) {







  printk("rs_close: bad serial port count; tty->count is 1, "
         "info->count is %d\n", info->count);
  info->count = 1;
 }
 if (--info->count < 0) {
  printk("rs_close: bad serial port count for ttyS%d: %d\n",
         info->line, info->count);
  info->count = 0;
 }
 if (info->count) {
  local_irq_restore(flags);
  return;
 }
 info->flags |= S_CLOSING;




 tty->closing = 1;
 if (info->closing_wait != S_CLOSING_WAIT_NONE)
  tty_wait_until_sent(tty, info->closing_wait);







 uart->ustcnt &= ~USTCNT_RXEN;
 uart->ustcnt &= ~(USTCNT_RXEN | USTCNT_RX_INTR_MASK);

 shutdown(info);
 rs_flush_buffer(tty);

 tty_ldisc_flush(tty);
 tty->closing = 0;
 info->event = 0;
 info->port.tty = ((void*)0);
 if (info->blocked_open) {
  if (info->close_delay) {
   msleep_interruptible(jiffies_to_msecs(info->close_delay));
  }
  wake_up_interruptible(&info->open_wait);
 }
 info->flags &= ~(S_NORMAL_ACTIVE|S_CLOSING);
 wake_up_interruptible(&info->close_wait);
 local_irq_restore(flags);
}
