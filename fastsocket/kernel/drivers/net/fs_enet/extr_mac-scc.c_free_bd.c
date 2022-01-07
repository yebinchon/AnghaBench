
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int ring_mem_addr; scalar_t__ ring_base; } ;


 int cpm_dpfree (int ) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void free_bd(struct net_device *dev)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (fep->ring_base)
  cpm_dpfree(fep->ring_mem_addr);
}
