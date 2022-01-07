
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; } ;
struct ktermios {int dummy; } ;
struct TYPE_2__ {int c_cflag; } ;


 int CREAD ;
 int CS8 ;
 int CSIZE ;
 int PARENB ;

__attribute__((used)) static void pty_set_termios(struct tty_struct *tty,
     struct ktermios *old_termios)
{
 tty->termios->c_cflag &= ~(CSIZE | PARENB);
 tty->termios->c_cflag |= (CS8 | CREAD);
}
