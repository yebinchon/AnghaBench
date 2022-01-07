
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int lock; int break_wait; } ;


 int EINVAL ;
 int ESI_ISSUE_BREAK ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int interruptible_sleep_on (int *) ;
 int serial_out (struct esp_struct*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int esp_break(struct tty_struct *tty, int break_state)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "esp_break"))
  return -EINVAL;

 if (break_state == -1) {
  spin_lock_irqsave(&info->lock, flags);
  serial_out(info, UART_ESI_CMD1, ESI_ISSUE_BREAK);
  serial_out(info, UART_ESI_CMD2, 0x01);
  spin_unlock_irqrestore(&info->lock, flags);


  interruptible_sleep_on(&info->break_wait);
 } else {
  spin_lock_irqsave(&info->lock, flags);
  serial_out(info, UART_ESI_CMD1, ESI_ISSUE_BREAK);
  serial_out(info, UART_ESI_CMD2, 0x00);
  spin_unlock_irqrestore(&info->lock, flags);
 }
 return 0;
}
