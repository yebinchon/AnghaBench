
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int rx_checksum_enabled; } ;


 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 efx_ethtool_get_rx_csum(struct net_device *net_dev)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 return efx->rx_checksum_enabled;
}
