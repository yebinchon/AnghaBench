
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hdlcdrv_state {scalar_t__ opened; int * skb; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* close ) (struct net_device*) ;} ;


 int dev_kfree_skb (int *) ;
 struct hdlcdrv_state* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int hdlcdrv_close(struct net_device *dev)
{
 struct hdlcdrv_state *s = netdev_priv(dev);
 int i = 0;

 netif_stop_queue(dev);

 if (s->ops && s->ops->close)
  i = s->ops->close(dev);
 if (s->skb)
  dev_kfree_skb(s->skb);
 s->skb = ((void*)0);
 s->opened = 0;
 return i;
}
