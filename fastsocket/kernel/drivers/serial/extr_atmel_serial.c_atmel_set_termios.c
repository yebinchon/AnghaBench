
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int lock; TYPE_1__* ops; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {int (* enable_ms ) (struct uart_port*) ;} ;


 unsigned int ATMEL_US_CHRL ;
 unsigned int ATMEL_US_CHRL_5 ;
 unsigned int ATMEL_US_CHRL_6 ;
 unsigned int ATMEL_US_CHRL_7 ;
 unsigned int ATMEL_US_CHRL_8 ;
 int ATMEL_US_FRAME ;
 unsigned int ATMEL_US_NBSTOP ;
 unsigned int ATMEL_US_NBSTOP_2 ;
 int ATMEL_US_OVRE ;
 unsigned int ATMEL_US_PAR ;
 int ATMEL_US_PARE ;
 unsigned int ATMEL_US_PAR_EVEN ;
 unsigned int ATMEL_US_PAR_MARK ;
 unsigned int ATMEL_US_PAR_NONE ;
 unsigned int ATMEL_US_PAR_ODD ;
 unsigned int ATMEL_US_PAR_SPACE ;
 int ATMEL_US_RSTRX ;
 int ATMEL_US_RSTSTA ;
 int ATMEL_US_RXBRK ;
 int ATMEL_US_RXDIS ;
 int ATMEL_US_RXEN ;
 int ATMEL_US_TXDIS ;
 int ATMEL_US_TXEN ;
 unsigned int ATMEL_US_USCLKS ;
 unsigned int ATMEL_US_USCLKS_MCK_DIV8 ;
 unsigned int ATMEL_US_USMODE ;
 unsigned int ATMEL_US_USMODE_HWHS ;
 unsigned int ATMEL_US_USMODE_NORMAL ;
 int BRKINT ;
 int CMSPAR ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 unsigned int UART_GET_IMR (struct uart_port*) ;
 unsigned int UART_GET_MR (struct uart_port*) ;
 int UART_PUT_BRGR (struct uart_port*,unsigned int) ;
 int UART_PUT_CR (struct uart_port*,int) ;
 int UART_PUT_IDR (struct uart_port*,int) ;
 int UART_PUT_IER (struct uart_port*,unsigned int) ;
 int UART_PUT_MR (struct uart_port*,unsigned int) ;
 scalar_t__ atmel_use_dma_rx (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct uart_port*) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void atmel_set_termios(struct uart_port *port, struct ktermios *termios,
         struct ktermios *old)
{
 unsigned long flags;
 unsigned int mode, imr, quot, baud;


 mode = UART_GET_MR(port) & ~(ATMEL_US_USCLKS | ATMEL_US_CHRL
     | ATMEL_US_NBSTOP | ATMEL_US_PAR
     | ATMEL_US_USMODE);

 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk / 16);
 quot = uart_get_divisor(port, baud);

 if (quot > 65535) {
  quot /= 8;
  mode |= ATMEL_US_USCLKS_MCK_DIV8;
 }


 switch (termios->c_cflag & CSIZE) {
 case 130:
  mode |= ATMEL_US_CHRL_5;
  break;
 case 129:
  mode |= ATMEL_US_CHRL_6;
  break;
 case 128:
  mode |= ATMEL_US_CHRL_7;
  break;
 default:
  mode |= ATMEL_US_CHRL_8;
  break;
 }


 if (termios->c_cflag & CSTOPB)
  mode |= ATMEL_US_NBSTOP_2;


 if (termios->c_cflag & PARENB) {

  if (termios->c_cflag & CMSPAR) {
   if (termios->c_cflag & PARODD)
    mode |= ATMEL_US_PAR_MARK;
   else
    mode |= ATMEL_US_PAR_SPACE;
  } else if (termios->c_cflag & PARODD)
   mode |= ATMEL_US_PAR_ODD;
  else
   mode |= ATMEL_US_PAR_EVEN;
 } else
  mode |= ATMEL_US_PAR_NONE;


 if (termios->c_cflag & CRTSCTS)
  mode |= ATMEL_US_USMODE_HWHS;
 else
  mode |= ATMEL_US_USMODE_NORMAL;

 spin_lock_irqsave(&port->lock, flags);

 port->read_status_mask = ATMEL_US_OVRE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
 if (termios->c_iflag & (BRKINT | PARMRK))
  port->read_status_mask |= ATMEL_US_RXBRK;

 if (atmel_use_dma_rx(port))

  UART_PUT_IER(port, port->read_status_mask);




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= (ATMEL_US_FRAME | ATMEL_US_PARE);
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= ATMEL_US_RXBRK;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= ATMEL_US_OVRE;
 }



 uart_update_timeout(port, termios->c_cflag, baud);






 imr = UART_GET_IMR(port);
 UART_PUT_IDR(port, -1);


 UART_PUT_CR(port, ATMEL_US_TXDIS | ATMEL_US_RXDIS);


 UART_PUT_MR(port, mode);


 UART_PUT_BRGR(port, quot);
 UART_PUT_CR(port, ATMEL_US_RSTSTA | ATMEL_US_RSTRX);
 UART_PUT_CR(port, ATMEL_US_TXEN | ATMEL_US_RXEN);


 UART_PUT_IER(port, imr);


 if (UART_ENABLE_MS(port, termios->c_cflag))
  port->ops->enable_ms(port);

 spin_unlock_irqrestore(&port->lock, flags);
}
