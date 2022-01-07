
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int uartclk; } ;
struct TYPE_3__ {int lock; int ignore_status_mask; int read_status_mask; } ;
struct sa1100_port {TYPE_1__ port; int timer; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;


 int BRKINT ;
 unsigned int CS7 ;
 unsigned int CS8 ;
 unsigned int CSIZE ;
 int CSTOPB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 scalar_t__ UART_ENABLE_MS (TYPE_1__*,int) ;
 unsigned int UART_GET_UTCR3 (struct sa1100_port*) ;
 int UART_GET_UTSR1 (struct sa1100_port*) ;
 int UART_PUT_UTCR0 (struct sa1100_port*,unsigned int) ;
 int UART_PUT_UTCR1 (struct sa1100_port*,unsigned int) ;
 int UART_PUT_UTCR2 (struct sa1100_port*,unsigned int) ;
 int UART_PUT_UTCR3 (struct sa1100_port*,unsigned int) ;
 int UART_PUT_UTSR0 (struct sa1100_port*,int) ;
 unsigned int UTCR0_DSS ;
 unsigned int UTCR0_OES ;
 unsigned int UTCR0_PE ;
 unsigned int UTCR0_SBS ;
 unsigned int UTCR3_RIE ;
 unsigned int UTCR3_TIE ;
 int UTSR0_RBB ;
 int UTSR0_REB ;
 int UTSR0_TFS ;
 int UTSR0_TO_SM (int) ;
 int UTSR1_FRE ;
 int UTSR1_PRE ;
 int UTSR1_ROR ;
 int UTSR1_TBY ;
 int UTSR1_TO_SM (int) ;
 int barrier () ;
 int del_timer_sync (int *) ;
 int sa1100_enable_ms (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int ,int) ;
 unsigned int uart_get_divisor (struct uart_port*,unsigned int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void
sa1100_set_termios(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old)
{
 struct sa1100_port *sport = (struct sa1100_port *)port;
 unsigned long flags;
 unsigned int utcr0, old_utcr3, baud, quot;
 unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;




 while ((termios->c_cflag & CSIZE) != CS7 &&
        (termios->c_cflag & CSIZE) != CS8) {
  termios->c_cflag &= ~CSIZE;
  termios->c_cflag |= old_csize;
  old_csize = CS8;
 }

 if ((termios->c_cflag & CSIZE) == CS8)
  utcr0 = UTCR0_DSS;
 else
  utcr0 = 0;

 if (termios->c_cflag & CSTOPB)
  utcr0 |= UTCR0_SBS;
 if (termios->c_cflag & PARENB) {
  utcr0 |= UTCR0_PE;
  if (!(termios->c_cflag & PARODD))
   utcr0 |= UTCR0_OES;
 }




 baud = uart_get_baud_rate(port, termios, old, 0, port->uartclk/16);
 quot = uart_get_divisor(port, baud);

 spin_lock_irqsave(&sport->port.lock, flags);

 sport->port.read_status_mask &= UTSR0_TO_SM(UTSR0_TFS);
 sport->port.read_status_mask |= UTSR1_TO_SM(UTSR1_ROR);
 if (termios->c_iflag & INPCK)
  sport->port.read_status_mask |=
    UTSR1_TO_SM(UTSR1_FRE | UTSR1_PRE);
 if (termios->c_iflag & (BRKINT | PARMRK))
  sport->port.read_status_mask |=
    UTSR0_TO_SM(UTSR0_RBB | UTSR0_REB);




 sport->port.ignore_status_mask = 0;
 if (termios->c_iflag & IGNPAR)
  sport->port.ignore_status_mask |=
    UTSR1_TO_SM(UTSR1_FRE | UTSR1_PRE);
 if (termios->c_iflag & IGNBRK) {
  sport->port.ignore_status_mask |=
    UTSR0_TO_SM(UTSR0_RBB | UTSR0_REB);




  if (termios->c_iflag & IGNPAR)
   sport->port.ignore_status_mask |=
    UTSR1_TO_SM(UTSR1_ROR);
 }

 del_timer_sync(&sport->timer);




 uart_update_timeout(port, termios->c_cflag, baud);




 old_utcr3 = UART_GET_UTCR3(sport);
 UART_PUT_UTCR3(sport, old_utcr3 & ~(UTCR3_RIE | UTCR3_TIE));

 while (UART_GET_UTSR1(sport) & UTSR1_TBY)
  barrier();


 UART_PUT_UTCR3(sport, 0);


 UART_PUT_UTCR0(sport, utcr0);


 quot -= 1;
 UART_PUT_UTCR1(sport, ((quot & 0xf00) >> 8));
 UART_PUT_UTCR2(sport, (quot & 0xff));

 UART_PUT_UTSR0(sport, -1);

 UART_PUT_UTCR3(sport, old_utcr3);

 if (UART_ENABLE_MS(&sport->port, termios->c_cflag))
  sa1100_enable_ms(&sport->port);

 spin_unlock_irqrestore(&sport->port.lock, flags);
}
