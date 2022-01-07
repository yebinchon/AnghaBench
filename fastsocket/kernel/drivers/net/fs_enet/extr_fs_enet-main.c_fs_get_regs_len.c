
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fs_enet_private {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_regs_len ) (struct net_device*) ;} ;


 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static int fs_get_regs_len(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 return (*fep->ops->get_regs_len)(dev);
}
