
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ htlo; scalar_t__ hthi; } ;
struct fs_enet_private {TYPE_1__ fec; } ;


 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void set_multicast_start(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 fep->fec.hthi = 0;
 fep->fec.htlo = 0;
}
