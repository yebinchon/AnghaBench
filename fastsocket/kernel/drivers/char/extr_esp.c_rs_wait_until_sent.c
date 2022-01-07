
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int timeout; int lock; } ;


 int ESI_GET_TX_AVAIL ;
 int ESI_NO_COMMAND ;
 int HZ ;
 int TASK_RUNNING ;
 int UART_ESI_CMD1 ;
 int UART_ESI_STAT1 ;
 int UART_ESI_STAT2 ;
 int current ;
 unsigned long jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 int msleep_interruptible (int ) ;
 int serial_in (struct esp_struct*,int ) ;
 int serial_out (struct esp_struct*,int ,int ) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void rs_wait_until_sent(struct tty_struct *tty, int timeout)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long orig_jiffies, char_time;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_wait_until_sent"))
  return;

 orig_jiffies = jiffies;
 char_time = ((info->timeout - HZ / 50) / 1024) / 5;

 if (!char_time)
  char_time = 1;

 spin_lock_irqsave(&info->lock, flags);
 serial_out(info, UART_ESI_CMD1, ESI_NO_COMMAND);
 serial_out(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);

 while ((serial_in(info, UART_ESI_STAT1) != 0x03) ||
  (serial_in(info, UART_ESI_STAT2) != 0xff)) {

  spin_unlock_irqrestore(&info->lock, flags);
  msleep_interruptible(jiffies_to_msecs(char_time));

  if (signal_pending(current))
   return;

  if (timeout && time_after(jiffies, orig_jiffies + timeout))
   return;

  spin_lock_irqsave(&info->lock, flags);
  serial_out(info, UART_ESI_CMD1, ESI_NO_COMMAND);
  serial_out(info, UART_ESI_CMD1, ESI_GET_TX_AVAIL);
 }
 spin_unlock_irqrestore(&info->lock, flags);
 set_current_state(TASK_RUNNING);
}
