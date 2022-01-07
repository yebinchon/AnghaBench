
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ktermios {scalar_t__ c_ispeed; scalar_t__ c_ospeed; int c_cflag; } ;


 int CLOCAL ;
 int CREAD ;
 int HUPCL ;

int tty_termios_hw_change(struct ktermios *a, struct ktermios *b)
{
 if (a->c_ispeed != b->c_ispeed || a->c_ospeed != b->c_ospeed)
  return 1;
 if ((a->c_cflag ^ b->c_cflag) & ~(HUPCL | CREAD | CLOCAL))
  return 1;
 return 0;
}
