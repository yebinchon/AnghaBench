
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sx_port* driver_data; } ;
struct sx_port {int dummy; } ;
struct file {int dummy; } ;


 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int sx_reconfigure_port (struct sx_port*) ;
 int sx_setsignals (struct sx_port*,int,int) ;

__attribute__((used)) static int sx_tiocmset(struct tty_struct *tty, struct file *file,
  unsigned int set, unsigned int clear)
{
 struct sx_port *port = tty->driver_data;
 int rts = -1, dtr = -1;

 if (set & TIOCM_RTS)
  rts = 1;
 if (set & TIOCM_DTR)
  dtr = 1;
 if (clear & TIOCM_RTS)
  rts = 0;
 if (clear & TIOCM_DTR)
  dtr = 0;

 sx_setsignals(port, dtr, rts);
 sx_reconfigure_port(port);
 return 0;
}
