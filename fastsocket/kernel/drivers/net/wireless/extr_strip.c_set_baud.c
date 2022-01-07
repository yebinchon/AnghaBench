
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int termios_mutex; TYPE_1__* ops; struct ktermios* termios; } ;
struct ktermios {int dummy; } ;
typedef int speed_t ;
struct TYPE_2__ {int (* set_termios ) (struct tty_struct*,struct ktermios*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tty_struct*,struct ktermios*) ;
 int tty_encode_baud_rate (struct tty_struct*,int ,int ) ;

__attribute__((used)) static void set_baud(struct tty_struct *tty, speed_t baudrate)
{
 struct ktermios old_termios;

 mutex_lock(&tty->termios_mutex);
 old_termios =*(tty->termios);
 tty_encode_baud_rate(tty, baudrate, baudrate);
 tty->ops->set_termios(tty, &old_termios);
 mutex_unlock(&tty->termios_mutex);
}
