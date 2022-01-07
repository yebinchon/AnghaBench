
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ fasync; int flags; } ;


 int POLL_OUT ;
 int SIGIO ;
 int TTY_DO_WRITE_WAKEUP ;
 int kill_fasync (scalar_t__*,int ,int ) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void n_tty_write_wakeup(struct tty_struct *tty)
{
 if (tty->fasync && test_and_clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags))
  kill_fasync(&tty->fasync, SIGIO, POLL_OUT);
}
