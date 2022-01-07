
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet32_private {int napi; } ;
struct net_device {int trans_start; } ;


 int jiffies ;
 int napi_disable (int *) ;
 struct pcnet32_private* netdev_priv (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;

__attribute__((used)) static void pcnet32_netif_stop(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);

 dev->trans_start = jiffies;
 napi_disable(&lp->napi);
 netif_tx_disable(dev);
}
