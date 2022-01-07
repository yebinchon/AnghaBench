
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int (* set_wol ) (struct efx_nic*,int ) ;} ;


 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,int ) ;

__attribute__((used)) static int efx_ethtool_set_wol(struct net_device *net_dev,
          struct ethtool_wolinfo *wol)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 return efx->type->set_wol(efx, wol->wolopts);
}
