
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int rx_indir_table; } ;


 int efx_nic_push_rx_indir_table (struct efx_nic*) ;
 int memcpy (int ,int const*,int) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_set_rxfh_indir(struct net_device *net_dev,
          const u32 *indir)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 memcpy(efx->rx_indir_table, indir, sizeof(efx->rx_indir_table));
 efx_nic_push_rx_indir_table(efx);
 return 0;
}
