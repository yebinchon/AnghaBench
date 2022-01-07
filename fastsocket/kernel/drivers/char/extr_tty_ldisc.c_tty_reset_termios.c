
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int termios_mutex; TYPE_2__* termios; TYPE_1__* driver; } ;
struct TYPE_5__ {int c_ospeed; int c_ispeed; } ;
struct TYPE_4__ {TYPE_2__ init_termios; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tty_termios_baud_rate (TYPE_2__*) ;
 int tty_termios_input_baud_rate (TYPE_2__*) ;

__attribute__((used)) static void tty_reset_termios(struct tty_struct *tty)
{
 mutex_lock(&tty->termios_mutex);
 *tty->termios = tty->driver->init_termios;
 tty->termios->c_ispeed = tty_termios_input_baud_rate(tty->termios);
 tty->termios->c_ospeed = tty_termios_baud_rate(tty->termios);
 mutex_unlock(&tty->termios_mutex);
}
