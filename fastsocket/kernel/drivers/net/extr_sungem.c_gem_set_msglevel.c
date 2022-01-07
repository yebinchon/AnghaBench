
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gem {int msg_enable; } ;


 struct gem* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gem_set_msglevel(struct net_device *dev, u32 value)
{
 struct gem *gp = netdev_priv(dev);
 gp->msg_enable = value;
}
