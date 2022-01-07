
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; TYPE_1__* termios; struct r_port* driver_data; } ;
struct r_port {int channel; } ;
struct ktermios {unsigned int c_cflag; } ;
struct TYPE_2__ {unsigned int c_cflag; } ;
typedef int CHANNEL_t ;


 int CBAUD ;
 unsigned int CMSPAR ;
 int CRTSCTS ;
 unsigned int CS5 ;
 unsigned int CS6 ;
 unsigned int CSIZE ;
 int configure_r_port (struct tty_struct*,struct r_port*,struct ktermios*) ;
 scalar_t__ rocket_paranoia_check (struct r_port*,char*) ;
 int rp_start (struct tty_struct*) ;
 int sClrDTR (int *) ;
 int sClrRTS (int *) ;
 int sSetDTR (int *) ;
 int sSetRTS (int *) ;

__attribute__((used)) static void rp_set_termios(struct tty_struct *tty,
      struct ktermios *old_termios)
{
 struct r_port *info = tty->driver_data;
 CHANNEL_t *cp;
 unsigned cflag;

 if (rocket_paranoia_check(info, "rp_set_termios"))
  return;

 cflag = tty->termios->c_cflag;




 if (((cflag & CSIZE) == CS5) || ((cflag & CSIZE) == CS6))
  tty->termios->c_cflag =
      ((cflag & ~CSIZE) | (old_termios->c_cflag & CSIZE));

 tty->termios->c_cflag &= ~CMSPAR;

 configure_r_port(tty, info, old_termios);

 cp = &info->channel;


 if ((old_termios->c_cflag & CBAUD) && !(tty->termios->c_cflag & CBAUD)) {
  sClrDTR(cp);
  sClrRTS(cp);
 }


 if (!(old_termios->c_cflag & CBAUD) && (tty->termios->c_cflag & CBAUD)) {
  if (!tty->hw_stopped || !(tty->termios->c_cflag & CRTSCTS))
   sSetRTS(cp);
  sSetDTR(cp);
 }

 if ((old_termios->c_cflag & CRTSCTS) && !(tty->termios->c_cflag & CRTSCTS)) {
  tty->hw_stopped = 0;
  rp_start(tty);
 }
}
