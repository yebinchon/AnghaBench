
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {scalar_t__ base_addr; } ;
struct TYPE_3__ {int rrastart; } ;
typedef TYPE_1__ ibmlana_priv ;


 scalar_t__ SONIC_RRP ;
 scalar_t__ SONIC_RWP ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void irqrbe_handler(struct net_device *dev)
{
 ibmlana_priv *priv = netdev_priv(dev);



 outw(priv->rrastart, dev->base_addr + SONIC_RRP);
 outw(priv->rrastart, dev->base_addr + SONIC_RWP);
}
