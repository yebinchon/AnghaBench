
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; struct ktermios* termios; } ;
struct moxa_port {int dummy; } ;
struct ktermios {int c_cflag; int c_iflag; } ;


 int CMSPAR ;
 int CRTSCTS ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int MoxaPortFlowCtrl (struct moxa_port*,int,int,int,int,int) ;
 int MoxaPortSetTermio (struct moxa_port*,struct ktermios*,int ) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int tty_termios_baud_rate (struct ktermios*) ;

__attribute__((used)) static void moxa_set_tty_param(struct tty_struct *tty, struct ktermios *old_termios)
{
 register struct ktermios *ts = tty->termios;
 struct moxa_port *ch = tty->driver_data;
 int rts, cts, txflow, rxflow, xany, baud;

 rts = cts = txflow = rxflow = xany = 0;
 if (ts->c_cflag & CRTSCTS)
  rts = cts = 1;
 if (ts->c_iflag & IXON)
  txflow = 1;
 if (ts->c_iflag & IXOFF)
  rxflow = 1;
 if (ts->c_iflag & IXANY)
  xany = 1;


 ts->c_cflag &= ~CMSPAR;
 MoxaPortFlowCtrl(ch, rts, cts, txflow, rxflow, xany);
 baud = MoxaPortSetTermio(ch, ts, tty_get_baud_rate(tty));
 if (baud == -1)
  baud = tty_termios_baud_rate(old_termios);

 tty_encode_baud_rate(tty, baud, baud);
}
