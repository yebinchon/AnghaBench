
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct efx_nic {int rx_indir_table; } ;


 int memcpy (int *,int ,int) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_get_rxfh_indir(struct net_device *net_dev, u32 *indir)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 memcpy(indir, efx->rx_indir_table, sizeof(efx->rx_indir_table));
 return 0;
}
