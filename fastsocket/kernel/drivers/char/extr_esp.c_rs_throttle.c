
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int IER; int lock; } ;


 int ESI_SET_RX_TIMEOUT ;
 int ESI_SET_SRV_MASK ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_IER_RDI ;
 int printk (char*,int ,int ) ;
 int serial_out (struct esp_struct*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_chars_in_buffer (struct tty_struct*) ;
 int tty_name (struct tty_struct*,char*) ;

__attribute__((used)) static void rs_throttle(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;







 if (serial_paranoia_check(info, tty->name, "rs_throttle"))
  return;

 spin_lock_irqsave(&info->lock, flags);
 info->IER &= ~UART_IER_RDI;
 serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
 serial_out(info, UART_ESI_CMD2, info->IER);
 serial_out(info, UART_ESI_CMD1, ESI_SET_RX_TIMEOUT);
 serial_out(info, UART_ESI_CMD2, 0x00);
 spin_unlock_irqrestore(&info->lock, flags);
}
