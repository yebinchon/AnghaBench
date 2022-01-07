
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_ldisc {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;
 int tty_buffer_flush (struct tty_struct*) ;
 int tty_ldisc_deref (struct tty_ldisc*) ;
 struct tty_ldisc* tty_ldisc_ref (struct tty_struct*) ;

void tty_ldisc_flush(struct tty_struct *tty)
{
 struct tty_ldisc *ld = tty_ldisc_ref(tty);
 if (ld) {
  if (ld->ops->flush_buffer)
   ld->ops->flush_buffer(tty);
  tty_ldisc_deref(ld);
 }
 tty_buffer_flush(tty);
}
