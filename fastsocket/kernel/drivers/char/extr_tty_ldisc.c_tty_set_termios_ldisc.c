
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int termios_mutex; TYPE_1__* termios; } ;
struct TYPE_2__ {int c_line; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void tty_set_termios_ldisc(struct tty_struct *tty, int num)
{
 mutex_lock(&tty->termios_mutex);
 tty->termios->c_line = num;
 mutex_unlock(&tty->termios_mutex);
}
