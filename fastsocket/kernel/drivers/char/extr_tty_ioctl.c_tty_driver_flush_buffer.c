
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* flush_buffer ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;

void tty_driver_flush_buffer(struct tty_struct *tty)
{
 if (tty->ops->flush_buffer)
  tty->ops->flush_buffer(tty);
}
