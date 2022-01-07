
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int fifosize; int read_status_mask; int ignore_status_mask; int lock; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int CREAD ;



 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARODD ;
 int UARTDR_FRMERR ;
 int UARTDR_OVERR ;
 int UARTDR_PARERR ;
 int UBRLCR (struct uart_port*) ;
 unsigned int UBRLCR_EVENPRT ;
 unsigned int UBRLCR_FIFOEN ;
 unsigned int UBRLCR_PRTEN ;
 unsigned int UBRLCR_WRDLEN5 ;
 unsigned int UBRLCR_WRDLEN6 ;
 unsigned int UBRLCR_WRDLEN7 ;
 unsigned int UBRLCR_WRDLEN8 ;
 unsigned int UBRLCR_XSTOP ;
 int clps_writel (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
clps711xuart_set_termios(struct uart_port *port, struct ktermios *termios,
    struct ktermios *old)
{
 unsigned int ubrlcr, baud, quot;
 unsigned long flags;




 termios->c_cflag |= CREAD;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 switch (termios->c_cflag & CSIZE) {
 case 130:
  ubrlcr = UBRLCR_WRDLEN5;
  break;
 case 129:
  ubrlcr = UBRLCR_WRDLEN6;
  break;
 case 128:
  ubrlcr = UBRLCR_WRDLEN7;
  break;
 default:
  ubrlcr = UBRLCR_WRDLEN8;
  break;
 }
 if (termios->c_cflag & CSTOPB)
  ubrlcr |= UBRLCR_XSTOP;
 if (termios->c_cflag & PARENB) {
  ubrlcr |= UBRLCR_PRTEN;
  if (!(termios->c_cflag & PARODD))
   ubrlcr |= UBRLCR_EVENPRT;
 }
 if (port->fifosize > 1)
  ubrlcr |= UBRLCR_FIFOEN;

 spin_lock_irqsave(&port->lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 port->read_status_mask = UARTDR_OVERR;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= UARTDR_PARERR | UARTDR_FRMERR;




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= UARTDR_FRMERR | UARTDR_PARERR;
 if (termios->c_iflag & IGNBRK) {




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= UARTDR_OVERR;
 }

 quot -= 1;

 clps_writel(ubrlcr | quot, UBRLCR(port));

 spin_unlock_irqrestore(&port->lock, flags);
}
