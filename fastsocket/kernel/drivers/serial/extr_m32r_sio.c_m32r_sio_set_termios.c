
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_status_mask; int ignore_status_mask; int lock; } ;
struct uart_sio_port {unsigned char lcr; TYPE_1__ port; int ier; } ;
struct uart_port {int uartclk; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CMSPAR ;
 int CREAD ;




 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int) ;
 int UART_IER ;
 int UART_IER_MSI ;
 unsigned char UART_LCR_EPAR ;
 unsigned char UART_LCR_PARITY ;
 unsigned char UART_LCR_SPAR ;
 unsigned char UART_LCR_STOP ;
 unsigned char UART_LCR_WLEN5 ;
 unsigned char UART_LCR_WLEN6 ;
 unsigned char UART_LCR_WLEN7 ;
 unsigned char UART_LCR_WLEN8 ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int UART_LSR_THRE ;
 unsigned int m32r_sio_get_divisor (struct uart_port*,unsigned int) ;
 int serial_out (struct uart_sio_port*,int ,int ) ;
 int sio_set_baud_rate (unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void m32r_sio_set_termios(struct uart_port *port,
 struct ktermios *termios, struct ktermios *old)
{
 struct uart_sio_port *up = (struct uart_sio_port *)port;
 unsigned char cval = 0;
 unsigned long flags;
 unsigned int baud, quot;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  cval = UART_LCR_WLEN5;
  break;
 case 130:
  cval = UART_LCR_WLEN6;
  break;
 case 129:
  cval = UART_LCR_WLEN7;
  break;
 default:
 case 128:
  cval = UART_LCR_WLEN8;
  break;
 }

 if (termios->c_cflag & CSTOPB)
  cval |= UART_LCR_STOP;
 if (termios->c_cflag & PARENB)
  cval |= UART_LCR_PARITY;
 if (!(termios->c_cflag & PARODD))
  cval |= UART_LCR_EPAR;
 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);

 quot = m32r_sio_get_divisor(port, baud);





 spin_lock_irqsave(&up->port.lock, flags);

 sio_set_baud_rate(baud);




 uart_update_timeout(port, termios->c_cflag, baud);

 up->port.read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
 if (termios->c_iflag & INPCK)
  up->port.read_status_mask |= UART_LSR_FE | UART_LSR_PE;
 if (termios->c_iflag & (BRKINT | PARMRK))
  up->port.read_status_mask |= UART_LSR_BI;




 up->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  up->port.ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
 if (termios->c_iflag & IGNBRK) {
  up->port.ignore_status_mask |= UART_LSR_BI;




  if (termios->c_iflag & IGNPAR)
   up->port.ignore_status_mask |= UART_LSR_OE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  up->port.ignore_status_mask |= UART_LSR_DR;




 up->ier &= ~UART_IER_MSI;
 if (UART_ENABLE_MS(&up->port, termios->c_cflag))
  up->ier |= UART_IER_MSI;

 serial_out(up, UART_IER, up->ier);

 up->lcr = cval;
 spin_unlock_irqrestore(&up->port.lock, flags);
}
