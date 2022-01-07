
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netdev_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct netdev_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void set_msglevel(struct net_device *dev, u32 val)
{
 struct netdev_private *np = netdev_priv(dev);
 np->msg_enable = val;
}
