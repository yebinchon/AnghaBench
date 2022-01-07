
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ duplex; } ;
struct efx_nic {int mac_lock; TYPE_1__* phy_op; int net_dev; } ;
struct TYPE_2__ {int (* set_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;


 scalar_t__ DUPLEX_FULL ;
 int EINVAL ;
 scalar_t__ SPEED_1000 ;
 int drv ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*) ;
 int stub1 (struct efx_nic*,struct ethtool_cmd*) ;

__attribute__((used)) static int efx_ethtool_set_settings(struct net_device *net_dev,
        struct ethtool_cmd *ecmd)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 int rc;


 if ((ethtool_cmd_speed(ecmd) == SPEED_1000) &&
     (ecmd->duplex != DUPLEX_FULL)) {
  netif_dbg(efx, drv, efx->net_dev,
     "rejecting unsupported 1000Mbps HD setting\n");
  return -EINVAL;
 }

 mutex_lock(&efx->mac_lock);
 rc = efx->phy_op->set_settings(efx, ecmd);
 mutex_unlock(&efx->mac_lock);
 return rc;
}
