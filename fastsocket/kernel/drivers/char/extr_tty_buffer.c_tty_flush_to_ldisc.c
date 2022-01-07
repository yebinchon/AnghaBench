
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int work; } ;
struct tty_struct {TYPE_1__ buf; } ;


 int flush_delayed_work (int *) ;

void tty_flush_to_ldisc(struct tty_struct *tty)
{
 flush_delayed_work(&tty->buf.work);
}
