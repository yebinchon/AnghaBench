
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int ignore_status_mask; int read_status_mask; int lock; scalar_t__ membase; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CRTSCTS ;
 unsigned char CR_MSIE ;
 unsigned char CR_RIE ;
 unsigned char CR_RTIE ;
 unsigned char CR_TIE ;
 unsigned char CR_UART_EN ;




 int CSIZE ;
 int CSTOPB ;
 int FR_BUSY ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 unsigned char LINE_CR_5BIT ;
 unsigned char LINE_CR_6BIT ;
 unsigned char LINE_CR_7BIT ;
 unsigned char LINE_CR_8BIT ;
 unsigned char LINE_CR_EPS ;
 unsigned char LINE_CR_FEN ;
 unsigned char LINE_CR_PEN ;
 unsigned char LINE_CR_STP2 ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 unsigned char RTS_CR_AUTO ;
 unsigned char RTS_CR_CTS_CTR ;
 unsigned char RTS_CR_RTS_POL ;
 int SR_BE ;
 int SR_FE ;
 int SR_PE ;
 scalar_t__ UART_BAUDDIV_LSB ;
 scalar_t__ UART_BAUDDIV_MSB ;
 scalar_t__ UART_CR ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 scalar_t__ UART_FR ;
 scalar_t__ UART_LINE_CR ;
 scalar_t__ UART_RTS_CR ;
 int readl (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writel (unsigned char,scalar_t__) ;

__attribute__((used)) static void
netx_set_termios(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old)
{
 unsigned int baud, quot;
 unsigned char old_cr;
 unsigned char line_cr = LINE_CR_FEN;
 unsigned char rts_cr = 0;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  line_cr |= LINE_CR_5BIT;
  break;
 case 130:
  line_cr |= LINE_CR_6BIT;
  break;
 case 129:
  line_cr |= LINE_CR_7BIT;
  break;
 case 128:
  line_cr |= LINE_CR_8BIT;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  line_cr |= LINE_CR_STP2;

 if (termios->c_cflag & PARENB) {
  line_cr |= LINE_CR_PEN;
  if (!(termios->c_cflag & PARODD))
   line_cr |= LINE_CR_EPS;
 }

 if (termios->c_cflag & CRTSCTS)
  rts_cr = RTS_CR_AUTO | RTS_CR_CTS_CTR | RTS_CR_RTS_POL;

 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = baud * 4096;
 quot /= 1000;
 quot *= 256;
 quot /= 100000;

 spin_lock_irq(&port->lock);

 uart_update_timeout(port, termios->c_cflag, baud);

 old_cr = readl(port->membase + UART_CR);


 writel(old_cr & ~(CR_MSIE | CR_RIE | CR_TIE | CR_RTIE),
  port->membase + UART_CR);


 while (readl(port->membase + UART_FR) & FR_BUSY);


 writel(old_cr & ~CR_UART_EN, port->membase + UART_CR);


 old_cr &= ~CR_MSIE;
 if (UART_ENABLE_MS(port, termios->c_cflag))
  old_cr |= CR_MSIE;

 writel((quot>>8) & 0xff, port->membase + UART_BAUDDIV_MSB);
 writel(quot & 0xff, port->membase + UART_BAUDDIV_LSB);
 writel(line_cr, port->membase + UART_LINE_CR);

 writel(rts_cr, port->membase + UART_RTS_CR);




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= SR_PE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= SR_BE;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= SR_PE;
 }

 port->read_status_mask = 0;
 if (termios->c_iflag & (BRKINT | PARMRK))
  port->read_status_mask |= SR_BE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= SR_PE | SR_FE;

 writel(old_cr, port->membase + UART_CR);

 spin_unlock_irq(&port->lock);
}
