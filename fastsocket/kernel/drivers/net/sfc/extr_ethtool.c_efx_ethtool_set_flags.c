
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int offload_features; } ;


 int EFX_FILTER_PRI_MANUAL ;
 int EINVAL ;
 int ETH_FLAG_NTUPLE ;
 int ETH_FLAG_RXHASH ;
 int efx_filter_clear_rx (struct efx_nic*,int ) ;
 int ethtool_op_set_flags (struct net_device*,int) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_set_flags(struct net_device *net_dev, u32 data)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 u32 supported = (efx->type->offload_features &
    (ETH_FLAG_RXHASH | ETH_FLAG_NTUPLE));
 int rc;

 if (data & ~supported)
  rc = -EINVAL;
 else
  rc = ethtool_op_set_flags(net_dev, data);
 if (rc)
  return rc;

 if (!(data & ETH_FLAG_NTUPLE))
  efx_filter_clear_rx(efx, EFX_FILTER_PRI_MANUAL);

 return 0;
}
