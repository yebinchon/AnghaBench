
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_local {scalar_t__ connection; int should_relinquish; scalar_t__ port_owner; } ;
struct net_device {int dummy; } ;


 scalar_t__ PLIP_CN_NONE ;
 struct net_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
plip_preempt(void *handle)
{
 struct net_device *dev = (struct net_device *)handle;
 struct net_local *nl = netdev_priv(dev);


 if (nl->connection != PLIP_CN_NONE) {
  nl->should_relinquish = 1;
  return 1;
 }

 nl->port_owner = 0;
 return 0;
}
