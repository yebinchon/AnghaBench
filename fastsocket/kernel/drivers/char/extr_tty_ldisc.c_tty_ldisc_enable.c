
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; } ;


 int TTY_LDISC ;
 int TTY_LDISC_CHANGING ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int tty_ldisc_wait ;
 int wake_up (int *) ;

void tty_ldisc_enable(struct tty_struct *tty)
{
 set_bit(TTY_LDISC, &tty->flags);
 clear_bit(TTY_LDISC_CHANGING, &tty->flags);
 wake_up(&tty_ldisc_wait);
}
