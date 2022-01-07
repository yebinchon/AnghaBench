
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cp_private {int msg_enable; } ;


 struct cp_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 cp_get_msglevel(struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 return cp->msg_enable;
}
