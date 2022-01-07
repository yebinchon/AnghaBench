
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int driver; } ;


 int tty_driver_remove_tty (int ,struct tty_struct*) ;
 int tty_free_termios (struct tty_struct*) ;

void tty_shutdown(struct tty_struct *tty)
{
 tty_driver_remove_tty(tty->driver, tty);
 tty_free_termios(tty);
}
