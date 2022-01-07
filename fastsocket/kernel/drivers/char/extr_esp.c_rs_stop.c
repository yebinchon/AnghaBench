
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct esp_struct* driver_data; } ;
struct esp_struct {int IER; int lock; } ;


 int ESI_SET_SRV_MASK ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_IER_THRI ;
 int serial_out (struct esp_struct*,int ,int) ;
 scalar_t__ serial_paranoia_check (struct esp_struct*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rs_stop(struct tty_struct *tty)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 if (serial_paranoia_check(info, tty->name, "rs_stop"))
  return;

 spin_lock_irqsave(&info->lock, flags);
 if (info->IER & UART_IER_THRI) {
  info->IER &= ~UART_IER_THRI;
  serial_out(info, UART_ESI_CMD1, ESI_SET_SRV_MASK);
  serial_out(info, UART_ESI_CMD2, info->IER);
 }
 spin_unlock_irqrestore(&info->lock, flags);
}
