
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_2__ {int uartclk; int fifosize; int read_status_mask; int ignore_status_mask; int lock; scalar_t__ membase; } ;
struct uart_amba_port {TYPE_1__ port; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CREAD ;



 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ UART010_CR ;
 unsigned int UART010_CR_MSIE ;
 scalar_t__ UART010_LCRH ;
 scalar_t__ UART010_LCRL ;
 scalar_t__ UART010_LCRM ;
 unsigned int UART01x_LCRH_EPS ;
 unsigned int UART01x_LCRH_FEN ;
 unsigned int UART01x_LCRH_PEN ;
 unsigned int UART01x_LCRH_STP2 ;
 unsigned int UART01x_LCRH_WLEN_5 ;
 unsigned int UART01x_LCRH_WLEN_6 ;
 unsigned int UART01x_LCRH_WLEN_7 ;
 unsigned int UART01x_LCRH_WLEN_8 ;
 int UART01x_RSR_BE ;
 int UART01x_RSR_FE ;
 int UART01x_RSR_OE ;
 int UART01x_RSR_PE ;
 int UART_DUMMY_RSR_RX ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 unsigned int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void
pl010_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 struct uart_amba_port *uap = (struct uart_amba_port *)port;
 unsigned int lcr_h, old_cr;
 unsigned long flags;
 unsigned int baud, quot;




 baud = uart_get_baud_rate(port, termios, old, 0, uap->port.uartclk/16);
 quot = uart_get_divisor(port, baud);

 switch (termios->c_cflag & CSIZE) {
 case 130:
  lcr_h = UART01x_LCRH_WLEN_5;
  break;
 case 129:
  lcr_h = UART01x_LCRH_WLEN_6;
  break;
 case 128:
  lcr_h = UART01x_LCRH_WLEN_7;
  break;
 default:
  lcr_h = UART01x_LCRH_WLEN_8;
  break;
 }
 if (termios->c_cflag & CSTOPB)
  lcr_h |= UART01x_LCRH_STP2;
 if (termios->c_cflag & PARENB) {
  lcr_h |= UART01x_LCRH_PEN;
  if (!(termios->c_cflag & PARODD))
   lcr_h |= UART01x_LCRH_EPS;
 }
 if (uap->port.fifosize > 1)
  lcr_h |= UART01x_LCRH_FEN;

 spin_lock_irqsave(&uap->port.lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 uap->port.read_status_mask = UART01x_RSR_OE;
 if (termios->c_iflag & INPCK)
  uap->port.read_status_mask |= UART01x_RSR_FE | UART01x_RSR_PE;
 if (termios->c_iflag & (BRKINT | PARMRK))
  uap->port.read_status_mask |= UART01x_RSR_BE;




 uap->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  uap->port.ignore_status_mask |= UART01x_RSR_FE | UART01x_RSR_PE;
 if (termios->c_iflag & IGNBRK) {
  uap->port.ignore_status_mask |= UART01x_RSR_BE;




  if (termios->c_iflag & IGNPAR)
   uap->port.ignore_status_mask |= UART01x_RSR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  uap->port.ignore_status_mask |= UART_DUMMY_RSR_RX;


 old_cr = readb(uap->port.membase + UART010_CR) & ~UART010_CR_MSIE;

 if (UART_ENABLE_MS(port, termios->c_cflag))
  old_cr |= UART010_CR_MSIE;

 writel(0, uap->port.membase + UART010_CR);


 quot -= 1;
 writel((quot & 0xf00) >> 8, uap->port.membase + UART010_LCRM);
 writel(quot & 0xff, uap->port.membase + UART010_LCRL);






 writel(lcr_h, uap->port.membase + UART010_LCRH);
 writel(old_cr, uap->port.membase + UART010_CR);

 spin_unlock_irqrestore(&uap->port.lock, flags);
}
