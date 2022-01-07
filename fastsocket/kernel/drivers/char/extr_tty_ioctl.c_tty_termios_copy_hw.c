
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {int c_cflag; int c_ospeed; int c_ispeed; } ;


 int CLOCAL ;
 int CREAD ;
 int HUPCL ;

void tty_termios_copy_hw(struct ktermios *new, struct ktermios *old)
{


 new->c_cflag &= HUPCL | CREAD | CLOCAL;
 new->c_cflag |= old->c_cflag & ~(HUPCL | CREAD | CLOCAL);
 new->c_ispeed = old->c_ispeed;
 new->c_ospeed = old->c_ospeed;
}
