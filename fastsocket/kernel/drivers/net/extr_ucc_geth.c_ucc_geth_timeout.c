
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucc_geth_private {int timeout_work; } ;
struct net_device {int dummy; } ;


 struct ucc_geth_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void ucc_geth_timeout(struct net_device *dev)
{
 struct ucc_geth_private *ugeth = netdev_priv(dev);

 netif_carrier_off(dev);
 schedule_work(&ugeth->timeout_work);
}
