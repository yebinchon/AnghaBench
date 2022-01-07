
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ count; } ;


 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void check_unthrottle(struct tty_struct *tty)
{
 if (tty->count)
  tty_unthrottle(tty);
}
