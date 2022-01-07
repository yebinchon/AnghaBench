
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct korina_private {TYPE_1__* eth_regs; } ;
struct TYPE_2__ {int ethintfc; } ;


 int korina_restart (struct net_device*) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void korina_clear_and_restart(struct net_device *dev, u32 value)
{
 struct korina_private *lp = netdev_priv(dev);

 netif_stop_queue(dev);
 writel(value, &lp->eth_regs->ethintfc);
 korina_restart(dev);
}
