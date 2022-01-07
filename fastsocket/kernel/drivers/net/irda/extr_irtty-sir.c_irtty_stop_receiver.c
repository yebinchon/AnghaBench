
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int termios_mutex; TYPE_1__* ops; struct ktermios* termios; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;


 int CREAD ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*,struct ktermios*) ;

__attribute__((used)) static inline void irtty_stop_receiver(struct tty_struct *tty, int stop)
{
 struct ktermios old_termios;
 int cflag;

 mutex_lock(&tty->termios_mutex);
 old_termios = *(tty->termios);
 cflag = tty->termios->c_cflag;

 if (stop)
  cflag &= ~CREAD;
 else
  cflag |= CREAD;

 tty->termios->c_cflag = cflag;
 if (tty->ops->set_termios)
  tty->ops->set_termios(tty, &old_termios);
 mutex_unlock(&tty->termios_mutex);
}
