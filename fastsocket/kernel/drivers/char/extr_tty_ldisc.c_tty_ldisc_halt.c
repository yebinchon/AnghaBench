
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tty_struct {TYPE_1__ buf; int flags; } ;


 int TTY_LDISC ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static int tty_ldisc_halt(struct tty_struct *tty)
{
 clear_bit(TTY_LDISC, &tty->flags);
 return cancel_delayed_work_sync(&tty->buf.work);
}
