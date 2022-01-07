
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct efx_nic {int mdio; } ;


 int mdio45_nway_restart (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_nway_reset(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 return mdio45_nway_restart(&efx->mdio);
}
