
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {scalar_t__ ignore_status_mask; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {unsigned int line; int read_status_mask; int ignore_status_mask; int lock; } ;
struct dz_port {unsigned int cflag; TYPE_1__ port; } ;


 int BRKINT ;
 int CREAD ;




 int CSIZE ;
 int CSTOPB ;
 int DZ_B9600 ;
 int DZ_BREAK ;
 unsigned int DZ_CS5 ;
 unsigned int DZ_CS6 ;
 unsigned int DZ_CS7 ;
 unsigned int DZ_CS8 ;
 unsigned int DZ_CSTOPB ;
 int DZ_FERR ;
 int DZ_LPR ;
 int DZ_OERR ;
 unsigned int DZ_PARENB ;
 unsigned int DZ_PARODD ;
 int DZ_PERR ;
 unsigned int DZ_RXENAB ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int dz_encode_baud_rate (unsigned int) ;
 int dz_out (struct dz_port*,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dz_port* to_dport (struct uart_port*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,unsigned int,unsigned int) ;
 unsigned int uart_get_baud_rate (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ;
 int uart_update_timeout (struct uart_port*,int,unsigned int) ;

__attribute__((used)) static void dz_set_termios(struct uart_port *uport, struct ktermios *termios,
      struct ktermios *old_termios)
{
 struct dz_port *dport = to_dport(uport);
 unsigned long flags;
 unsigned int cflag, baud;
 int bflag;

 cflag = dport->port.line;

 switch (termios->c_cflag & CSIZE) {
 case 131:
  cflag |= DZ_CS5;
  break;
 case 130:
  cflag |= DZ_CS6;
  break;
 case 129:
  cflag |= DZ_CS7;
  break;
 case 128:
 default:
  cflag |= DZ_CS8;
 }

 if (termios->c_cflag & CSTOPB)
  cflag |= DZ_CSTOPB;
 if (termios->c_cflag & PARENB)
  cflag |= DZ_PARENB;
 if (termios->c_cflag & PARODD)
  cflag |= DZ_PARODD;

 baud = uart_get_baud_rate(uport, termios, old_termios, 50, 9600);
 bflag = dz_encode_baud_rate(baud);
 if (bflag < 0) {
  baud = uart_get_baud_rate(uport, old_termios, ((void*)0), 50, 9600);
  bflag = dz_encode_baud_rate(baud);
  if (bflag < 0) {
   baud = 9600;
   bflag = DZ_B9600;
  }
  tty_termios_encode_baud_rate(termios, baud, baud);
 }
 cflag |= bflag;

 if (termios->c_cflag & CREAD)
  cflag |= DZ_RXENAB;

 spin_lock_irqsave(&dport->port.lock, flags);

 uart_update_timeout(uport, termios->c_cflag, baud);

 dz_out(dport, DZ_LPR, cflag);
 dport->cflag = cflag;


 dport->port.read_status_mask = DZ_OERR;
 if (termios->c_iflag & INPCK)
  dport->port.read_status_mask |= DZ_FERR | DZ_PERR;
 if (termios->c_iflag & (BRKINT | PARMRK))
  dport->port.read_status_mask |= DZ_BREAK;


 uport->ignore_status_mask = 0;
 if ((termios->c_iflag & (IGNPAR | IGNBRK)) == (IGNPAR | IGNBRK))
  dport->port.ignore_status_mask |= DZ_OERR;
 if (termios->c_iflag & IGNPAR)
  dport->port.ignore_status_mask |= DZ_FERR | DZ_PERR;
 if (termios->c_iflag & IGNBRK)
  dport->port.ignore_status_mask |= DZ_BREAK;

 spin_unlock_irqrestore(&dport->port.lock, flags);
}
