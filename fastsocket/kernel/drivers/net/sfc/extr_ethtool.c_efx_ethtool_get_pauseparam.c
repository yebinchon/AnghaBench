
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; int autoneg; } ;
struct efx_nic {int wanted_fc; } ;


 int EFX_FC_AUTO ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;
 struct efx_nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void efx_ethtool_get_pauseparam(struct net_device *net_dev,
           struct ethtool_pauseparam *pause)
{
 struct efx_nic *efx = netdev_priv(net_dev);

 pause->rx_pause = !!(efx->wanted_fc & EFX_FC_RX);
 pause->tx_pause = !!(efx->wanted_fc & EFX_FC_TX);
 pause->autoneg = !!(efx->wanted_fc & EFX_FC_AUTO);
}
