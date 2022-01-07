
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vlan_group {int dummy; } ;
struct port_info {int viid; TYPE_1__* adapter; struct vlan_group* vlan_grp; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int fn; } ;


 struct port_info* netdev_priv (struct net_device*) ;
 int t4_set_rxmode (TYPE_1__*,int ,int ,int,int,int,int,int ,int) ;

__attribute__((used)) static void vlan_rx_register(struct net_device *dev, struct vlan_group *grp)
{
 struct port_info *pi = netdev_priv(dev);

 pi->vlan_grp = grp;
 t4_set_rxmode(pi->adapter, pi->adapter->fn, pi->viid, -1, -1, -1, -1,
        grp != ((void*)0), 1);
}
