
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_room ) (struct tty_struct*) ;} ;


 int stub1 (struct tty_struct*) ;

int tty_write_room(struct tty_struct *tty)
{
 if (tty->ops->write_room)
  return tty->ops->write_room(tty);
 return 2048;
}
