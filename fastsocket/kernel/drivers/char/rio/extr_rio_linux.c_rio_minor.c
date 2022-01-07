
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; scalar_t__ driver; } ;


 scalar_t__ rio_driver ;

int rio_minor(struct tty_struct *tty)
{
 return tty->index + ((tty->driver == rio_driver) ? 0 : 256);
}
