
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slip {int lock; scalar_t__ xleft; scalar_t__ rcount; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 struct slip* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int
sl_close(struct net_device *dev)
{
 struct slip *sl = netdev_priv(dev);

 spin_lock_bh(&sl->lock);
 if (sl->tty)

  clear_bit(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);
 netif_stop_queue(dev);
 sl->rcount = 0;
 sl->xleft = 0;
 spin_unlock_bh(&sl->lock);

 return 0;
}
