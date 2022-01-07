
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int n_rx_channels; int rx_indir_table; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 efx_ethtool_get_rxfh_indir_size(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 return ((efx_nic_rev(efx) < EFX_REV_FALCON_B0 ||
  efx->n_rx_channels == 1) ?
                0 : ARRAY_SIZE(efx->rx_indir_table));
}
