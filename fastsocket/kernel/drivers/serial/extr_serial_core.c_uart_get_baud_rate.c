
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ upf_t ;
struct uart_port {scalar_t__ flags; } ;
struct ktermios {int c_cflag; } ;


 int CBAUD ;
 scalar_t__ UPF_SPD_HI ;
 scalar_t__ UPF_SPD_MASK ;
 scalar_t__ UPF_SPD_SHI ;
 scalar_t__ UPF_SPD_VHI ;
 scalar_t__ UPF_SPD_WARP ;
 unsigned int tty_termios_baud_rate (struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,int,int) ;

unsigned int
uart_get_baud_rate(struct uart_port *port, struct ktermios *termios,
     struct ktermios *old, unsigned int min, unsigned int max)
{
 unsigned int try, baud, altbaud = 38400;
 int hung_up = 0;
 upf_t flags = port->flags & UPF_SPD_MASK;

 if (flags == UPF_SPD_HI)
  altbaud = 57600;
 if (flags == UPF_SPD_VHI)
  altbaud = 115200;
 if (flags == UPF_SPD_SHI)
  altbaud = 230400;
 if (flags == UPF_SPD_WARP)
  altbaud = 460800;

 for (try = 0; try < 2; try++) {
  baud = tty_termios_baud_rate(termios);





  if (baud == 38400)
   baud = altbaud;




  if (baud == 0) {
   hung_up = 1;
   baud = 9600;
  }

  if (baud >= min && baud <= max)
   return baud;





  termios->c_cflag &= ~CBAUD;
  if (old) {
   baud = tty_termios_baud_rate(old);
   if (!hung_up)
    tty_termios_encode_baud_rate(termios,
        baud, baud);
   old = ((void*)0);
   continue;
  }





  if (!hung_up)
   tty_termios_encode_baud_rate(termios, 9600, 9600);
 }

 return 0;
}
