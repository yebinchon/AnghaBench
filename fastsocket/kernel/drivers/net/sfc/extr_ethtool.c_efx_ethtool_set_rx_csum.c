
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int rx_checksum_enabled; } ;


 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_set_rx_csum(struct net_device *net_dev, u32 enable)
{
 struct efx_nic *efx = netdev_priv(net_dev);




 efx->rx_checksum_enabled = !!enable;

 return 0;
}
