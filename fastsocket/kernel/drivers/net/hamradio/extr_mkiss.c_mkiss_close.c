
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct mkiss* disc_data; } ;
struct mkiss {int * tty; int xbuff; int rbuff; int dev; int dead_sem; int refcnt; } ;


 int atomic_dec_and_test (int *) ;
 int disc_data_lock ;
 int down (int *) ;
 int kfree (int ) ;
 int unregister_netdev (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void mkiss_close(struct tty_struct *tty)
{
 struct mkiss *ax;

 write_lock(&disc_data_lock);
 ax = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock(&disc_data_lock);

 if (!ax)
  return;





 if (!atomic_dec_and_test(&ax->refcnt))
  down(&ax->dead_sem);

 unregister_netdev(ax->dev);


 kfree(ax->rbuff);
 kfree(ax->xbuff);

 ax->tty = ((void*)0);
}
