
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int MoxaPortGetLineOut (struct moxa_port*,int*,int*) ;
 int MoxaPortLineStatus (struct moxa_port*) ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int moxa_openlock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int moxa_tiocmget(struct tty_struct *tty, struct file *file)
{
 struct moxa_port *ch;
 int flag = 0, dtr, rts;

 mutex_lock(&moxa_openlock);
 ch = tty->driver_data;
 if (!ch) {
  mutex_unlock(&moxa_openlock);
  return -EINVAL;
 }

 MoxaPortGetLineOut(ch, &dtr, &rts);
 if (dtr)
  flag |= TIOCM_DTR;
 if (rts)
  flag |= TIOCM_RTS;
 dtr = MoxaPortLineStatus(ch);
 if (dtr & 1)
  flag |= TIOCM_CTS;
 if (dtr & 2)
  flag |= TIOCM_DSR;
 if (dtr & 4)
  flag |= TIOCM_CD;
 mutex_unlock(&moxa_openlock);
 return flag;
}
