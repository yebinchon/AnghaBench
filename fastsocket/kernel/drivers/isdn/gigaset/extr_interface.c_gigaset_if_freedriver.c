
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {int tty; scalar_t__ have_tty; } ;


 int put_tty_driver (int ) ;
 int tty_unregister_driver (int ) ;

void gigaset_if_freedriver(struct gigaset_driver *drv)
{
 if (!drv->have_tty)
  return;

 drv->have_tty = 0;
 tty_unregister_driver(drv->tty);
 put_tty_driver(drv->tty);
}
