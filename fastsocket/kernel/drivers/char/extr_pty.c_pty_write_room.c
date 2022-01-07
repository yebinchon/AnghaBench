
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int link; scalar_t__ stopped; } ;


 int pty_space (int ) ;

__attribute__((used)) static int pty_write_room(struct tty_struct *tty)
{
 if (tty->stopped)
  return 0;
 return pty_space(tty->link);
}
