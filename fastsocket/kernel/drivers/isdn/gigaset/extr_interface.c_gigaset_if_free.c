
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gigaset_driver {int tty; int have_tty; } ;
struct cardstate {int minor_index; int * tty_dev; int if_wake_tasklet; struct gigaset_driver* driver; } ;


 int tasklet_disable (int *) ;
 int tasklet_kill (int *) ;
 int tty_unregister_device (int ,int ) ;

void gigaset_if_free(struct cardstate *cs)
{
 struct gigaset_driver *drv;

 drv = cs->driver;
 if (!drv->have_tty)
  return;

 tasklet_disable(&cs->if_wake_tasklet);
 tasklet_kill(&cs->if_wake_tasklet);
 cs->tty_dev = ((void*)0);
 tty_unregister_device(drv->tty, cs->minor_index);
}
