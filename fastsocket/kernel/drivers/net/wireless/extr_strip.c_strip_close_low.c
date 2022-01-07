
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strip {int idle_timer; int * tx_buff; int * sx_buff; int * rx_buff; TYPE_1__* tty; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 int EBUSY ;
 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int del_timer (int *) ;
 int kfree (int *) ;
 struct strip* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int strip_close_low(struct net_device *dev)
{
 struct strip *strip_info = netdev_priv(dev);

 if (strip_info->tty == ((void*)0))
  return -EBUSY;
 clear_bit(TTY_DO_WRITE_WAKEUP, &strip_info->tty->flags);
 netif_stop_queue(dev);




 kfree(strip_info->rx_buff);
 strip_info->rx_buff = ((void*)0);
 kfree(strip_info->sx_buff);
 strip_info->sx_buff = ((void*)0);
 kfree(strip_info->tx_buff);
 strip_info->tx_buff = ((void*)0);

 del_timer(&strip_info->idle_timer);
 return 0;
}
