
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int fifosize; int read_status_mask; int ignore_status_mask; int lock; scalar_t__ membase; } ;
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
 scalar_t__ UART011_CR ;
 int UART011_DR_BE ;
 int UART011_DR_FE ;
 int UART011_DR_OE ;
 int UART011_DR_PE ;
 scalar_t__ UART011_FBRD ;
 scalar_t__ UART011_IBRD ;
 scalar_t__ UART011_LCRH ;
 unsigned int UART01x_LCRH_EPS ;
 unsigned int UART01x_LCRH_FEN ;
 unsigned int UART01x_LCRH_PEN ;
 unsigned int UART01x_LCRH_STP2 ;
 unsigned int UART01x_LCRH_WLEN_5 ;
 unsigned int UART01x_LCRH_WLEN_6 ;
 unsigned int UART01x_LCRH_WLEN_7 ;
 unsigned int UART01x_LCRH_WLEN_8 ;
 int UART_DUMMY_DR_RX ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 int pl011_enable_ms (struct uart_port*) ;
 unsigned int readw (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static void
pl011_set_termios(struct uart_port *port, struct ktermios *termios,
       struct ktermios *old)
{
 unsigned int lcr_h, old_cr;
 unsigned long flags;
 unsigned int baud, quot;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = port->uartclk * 4 / baud;

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
 if (port->fifosize > 1)
  lcr_h |= UART01x_LCRH_FEN;

 spin_lock_irqsave(&port->lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 port->read_status_mask = UART011_DR_OE | 255;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= UART011_DR_FE | UART011_DR_PE;
 if (termios->c_iflag & (BRKINT | PARMRK))
  port->read_status_mask |= UART011_DR_BE;




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= UART011_DR_FE | UART011_DR_PE;
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= UART011_DR_BE;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= UART011_DR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= UART_DUMMY_DR_RX;

 if (UART_ENABLE_MS(port, termios->c_cflag))
  pl011_enable_ms(port);


 old_cr = readw(port->membase + UART011_CR);
 writew(0, port->membase + UART011_CR);


 writew(quot & 0x3f, port->membase + UART011_FBRD);
 writew(quot >> 6, port->membase + UART011_IBRD);






 writew(lcr_h, port->membase + UART011_LCRH);
 writew(old_cr, port->membase + UART011_CR);

 spin_unlock_irqrestore(&port->lock, flags);
}
