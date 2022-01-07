
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int uartclk; int fifosize; int read_status_mask; int ignore_status_mask; int lock; } ;
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
 int UART_DUMMY_LSR_RX ;
 scalar_t__ UART_ENABLE_MS (struct uart_port*,int) ;
 int UART_PUT_BRDR (struct uart_port*,unsigned int) ;
 int UART_PUT_FCR (struct uart_port*,unsigned int) ;
 int UART_PUT_LCR (struct uart_port*,unsigned int) ;
 unsigned int URCL_5 ;
 unsigned int URCL_6 ;
 unsigned int URCL_7 ;
 unsigned int URCL_8 ;
 unsigned int URFC_URFE ;
 unsigned int URFC_URFRT_8 ;
 unsigned int URFC_URRFR ;
 unsigned int URFC_URTFR ;
 unsigned int URLC_URSB ;
 int URLS_URBI ;
 int URLS_URFE ;
 int URLS_URPE ;
 int URLS_URROE ;
 unsigned int URPE_EVEN ;
 unsigned int URPE_MARK ;
 unsigned int URPE_ODD ;
 unsigned int URPE_SPACE ;
 int ks8695uart_disable_ms (struct uart_port*) ;
 int ks8695uart_enable_ms (struct uart_port*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void ks8695uart_set_termios(struct uart_port *port, struct ktermios *termios, struct ktermios *old)
{
 unsigned int lcr, fcr = 0;
 unsigned long flags;
 unsigned int baud, quot;




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 switch (termios->c_cflag & CSIZE) {
 case 130:
  lcr = URCL_5;
  break;
 case 129:
  lcr = URCL_6;
  break;
 case 128:
  lcr = URCL_7;
  break;
 default:
  lcr = URCL_8;
  break;
 }


 if (termios->c_cflag & CSTOPB)
  lcr |= URLC_URSB;


 if (termios->c_cflag & PARENB) {
  if (termios->c_cflag & CMSPAR) {
   if (termios->c_cflag & PARODD)
    lcr |= URPE_MARK;
   else
    lcr |= URPE_SPACE;
  }
  else if (termios->c_cflag & PARODD)
   lcr |= URPE_ODD;
  else
   lcr |= URPE_EVEN;
 }

 if (port->fifosize > 1)
  fcr = URFC_URFRT_8 | URFC_URTFR | URFC_URRFR | URFC_URFE;

 spin_lock_irqsave(&port->lock, flags);




 uart_update_timeout(port, termios->c_cflag, baud);

 port->read_status_mask = URLS_URROE;
 if (termios->c_iflag & INPCK)
  port->read_status_mask |= (URLS_URFE | URLS_URPE);
 if (termios->c_iflag & (BRKINT | PARMRK))
  port->read_status_mask |= URLS_URBI;




 port->ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  port->ignore_status_mask |= (URLS_URFE | URLS_URPE);
 if (termios->c_iflag & IGNBRK) {
  port->ignore_status_mask |= URLS_URBI;




  if (termios->c_iflag & IGNPAR)
   port->ignore_status_mask |= URLS_URROE;
 }




 if ((termios->c_cflag & CREAD) == 0)
  port->ignore_status_mask |= UART_DUMMY_LSR_RX;


 if (UART_ENABLE_MS(port, termios->c_cflag))
  ks8695uart_enable_ms(port);
 else
  ks8695uart_disable_ms(port);


 UART_PUT_BRDR(port, quot);

 UART_PUT_LCR(port, lcr);
 UART_PUT_FCR(port, fcr);

 spin_unlock_irqrestore(&port->lock, flags);
}
