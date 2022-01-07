
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sixpack {int lock; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct sixpack* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int sp_close(struct net_device *dev)
{
 struct sixpack *sp = netdev_priv(dev);

 spin_lock_bh(&sp->lock);
 if (sp->tty) {

  clear_bit(TTY_DO_WRITE_WAKEUP, &sp->tty->flags);
 }
 netif_stop_queue(dev);
 spin_unlock_bh(&sp->lock);

 return 0;
}
