
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct sixpack* disc_data; } ;
struct sixpack {int xbuff; int rbuff; int resync_t; int tx_t; int dev; int dead_sem; int refcnt; } ;


 int atomic_dec_and_test (int *) ;
 int del_timer (int *) ;
 int disc_data_lock ;
 int down (int *) ;
 int kfree (int ) ;
 int unregister_netdev (int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void sixpack_close(struct tty_struct *tty)
{
 struct sixpack *sp;

 write_lock(&disc_data_lock);
 sp = tty->disc_data;
 tty->disc_data = ((void*)0);
 write_unlock(&disc_data_lock);
 if (!sp)
  return;





 if (!atomic_dec_and_test(&sp->refcnt))
  down(&sp->dead_sem);

 unregister_netdev(sp->dev);

 del_timer(&sp->tx_t);
 del_timer(&sp->resync_t);


 kfree(sp->rbuff);
 kfree(sp->xbuff);
}
