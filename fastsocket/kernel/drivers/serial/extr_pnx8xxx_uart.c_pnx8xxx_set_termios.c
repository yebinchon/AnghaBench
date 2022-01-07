
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int uartclk; } ;
struct TYPE_3__ {int read_status_mask; int ignore_status_mask; int lock; } ;
struct pnx8xxx_port {TYPE_1__ port; int timer; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;


 int BRKINT ;
 int CREAD ;
 unsigned int CS7 ;
 unsigned int CS8 ;
 unsigned int CSIZE ;
 int CSTOPB ;
 int FIFO_TO_SM (int ) ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int ISTAT_TO_SM (int ) ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int PNX8XXX_BAUD ;
 int PNX8XXX_FIFO ;
 int PNX8XXX_ICLR ;
 int PNX8XXX_IEN ;
 int PNX8XXX_LCR ;
 int PNX8XXX_UART_FIFO_RXFE ;
 int PNX8XXX_UART_FIFO_RXPAR ;
 int PNX8XXX_UART_FIFO_TXFIFO_STA ;
 unsigned int PNX8XXX_UART_INT_ALLRX ;
 unsigned int PNX8XXX_UART_INT_ALLTX ;
 int PNX8XXX_UART_INT_BREAK ;
 int PNX8XXX_UART_INT_EMPTY ;
 int PNX8XXX_UART_INT_RX ;
 int PNX8XXX_UART_INT_RXOVRN ;
 unsigned int PNX8XXX_UART_LCR_2STOPB ;
 unsigned int PNX8XXX_UART_LCR_8BIT ;
 unsigned int PNX8XXX_UART_LCR_PAREN ;
 unsigned int PNX8XXX_UART_LCR_PAREVN ;
 unsigned int PNX8XXX_UART_LCR_RX_RST ;
 unsigned int PNX8XXX_UART_LCR_TX_RST ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int) ;
 int barrier () ;
 int del_timer_sync (int *) ;
 int pnx8xxx_enable_ms (TYPE_1__*) ;
 int serial_in (struct pnx8xxx_port*,int ) ;
 int serial_out (struct pnx8xxx_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
pnx8xxx_set_termios(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old)
{
 struct pnx8xxx_port *sport = (struct pnx8xxx_port *)port;
 unsigned long flags;
 unsigned int lcr_fcr, old_ien, baud, quot;
 unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;




 while ((termios->c_cflag & CSIZE) != CS7 &&
        (termios->c_cflag & CSIZE) != CS8) {
  termios->c_cflag &= ~CSIZE;
  termios->c_cflag |= old_csize;
  old_csize = CS8;
 }

 if ((termios->c_cflag & CSIZE) == CS8)
  lcr_fcr = PNX8XXX_UART_LCR_8BIT;
 else
  lcr_fcr = 0;

 if (termios->c_cflag & CSTOPB)
  lcr_fcr |= PNX8XXX_UART_LCR_2STOPB;
 if (termios->c_cflag & PARENB) {
  lcr_fcr |= PNX8XXX_UART_LCR_PAREN;
  if (!(termios->c_cflag & PARODD))
   lcr_fcr |= PNX8XXX_UART_LCR_PAREVN;
 }




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 spin_lock_irqsave(&sport->port.lock, flags);

 sport->port.read_status_mask = ISTAT_TO_SM(PNX8XXX_UART_INT_RXOVRN) |
    ISTAT_TO_SM(PNX8XXX_UART_INT_EMPTY) |
    ISTAT_TO_SM(PNX8XXX_UART_INT_RX);
 if (termios->c_iflag & INPCK)
  sport->port.read_status_mask |=
   FIFO_TO_SM(PNX8XXX_UART_FIFO_RXFE) |
   FIFO_TO_SM(PNX8XXX_UART_FIFO_RXPAR);
 if (termios->c_iflag & (BRKINT | PARMRK))
  sport->port.read_status_mask |=
   ISTAT_TO_SM(PNX8XXX_UART_INT_BREAK);




 sport->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  sport->port.ignore_status_mask |=
   FIFO_TO_SM(PNX8XXX_UART_FIFO_RXFE) |
   FIFO_TO_SM(PNX8XXX_UART_FIFO_RXPAR);
 if (termios->c_iflag & IGNBRK) {
  sport->port.ignore_status_mask |=
   ISTAT_TO_SM(PNX8XXX_UART_INT_BREAK);




  if (termios->c_iflag & IGNPAR)
   sport->port.ignore_status_mask |=
    ISTAT_TO_SM(PNX8XXX_UART_INT_RXOVRN);
 }




 if ((termios->c_cflag & CREAD) == 0)
  sport->port.ignore_status_mask |=
   ISTAT_TO_SM(PNX8XXX_UART_INT_RX);

 del_timer_sync(&sport->timer);




 uart_update_timeout(port, termios->c_cflag, baud);




 old_ien = serial_in(sport, PNX8XXX_IEN);
 serial_out(sport, PNX8XXX_IEN, old_ien & ~(PNX8XXX_UART_INT_ALLTX |
     PNX8XXX_UART_INT_ALLRX));

 while (serial_in(sport, PNX8XXX_FIFO) & PNX8XXX_UART_FIFO_TXFIFO_STA)
  barrier();


 serial_out(sport, PNX8XXX_IEN, 0);


 lcr_fcr |= PNX8XXX_UART_LCR_TX_RST;
 lcr_fcr |= PNX8XXX_UART_LCR_RX_RST;


 serial_out(sport, PNX8XXX_LCR, lcr_fcr);


 quot -= 1;
 serial_out(sport, PNX8XXX_BAUD, quot);

 serial_out(sport, PNX8XXX_ICLR, -1);

 serial_out(sport, PNX8XXX_IEN, old_ien);

 if (UART_ENABLE_MS(&sport->port, termios->c_cflag))
  pnx8xxx_enable_ms(&sport->port);

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
