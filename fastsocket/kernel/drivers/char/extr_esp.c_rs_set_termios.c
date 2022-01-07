
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; struct esp_struct* driver_data; } ;
struct ktermios {int c_cflag; } ;
struct esp_struct {int MCR; int lock; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CBAUD ;
 int CRTSCTS ;
 int ESI_WRITE_UART ;
 int UART_ESI_CMD1 ;
 int UART_ESI_CMD2 ;
 int UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;
 int change_speed (struct esp_struct*) ;
 int rs_start (struct tty_struct*) ;
 int serial_out (struct esp_struct*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rs_set_termios(struct tty_struct *tty, struct ktermios *old_termios)
{
 struct esp_struct *info = tty->driver_data;
 unsigned long flags;

 change_speed(info);

 spin_lock_irqsave(&info->lock, flags);


 if ((old_termios->c_cflag & CBAUD) &&
  !(tty->termios->c_cflag & CBAUD)) {
  info->MCR &= ~(UART_MCR_DTR|UART_MCR_RTS);
  serial_out(info, UART_ESI_CMD1, ESI_WRITE_UART);
  serial_out(info, UART_ESI_CMD2, UART_MCR);
  serial_out(info, UART_ESI_CMD2, info->MCR);
 }


 if (!(old_termios->c_cflag & CBAUD) &&
  (tty->termios->c_cflag & CBAUD)) {
  info->MCR |= (UART_MCR_DTR | UART_MCR_RTS);
  serial_out(info, UART_ESI_CMD1, ESI_WRITE_UART);
  serial_out(info, UART_ESI_CMD2, UART_MCR);
  serial_out(info, UART_ESI_CMD2, info->MCR);
 }

 spin_unlock_irqrestore(&info->lock, flags);


 if ((old_termios->c_cflag & CRTSCTS) &&
     !(tty->termios->c_cflag & CRTSCTS)) {
  rs_start(tty);
 }
}
