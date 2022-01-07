
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcnet32_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct pcnet32_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 pcnet32_get_msglevel(struct net_device *dev)
{
 struct pcnet32_private *lp = netdev_priv(dev);
 return lp->msg_enable;
}
