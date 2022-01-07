
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; } ;
struct arcnet_local {int config; } ;


 int SETCONF ;
 int TXENcfg ;
 struct arcnet_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void com20020_close(struct net_device *dev)
{
 struct arcnet_local *lp = netdev_priv(dev);
 int ioaddr = dev->base_addr;


 lp->config &= ~TXENcfg;
 SETCONF;
}
