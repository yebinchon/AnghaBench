
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_cmd {int supported; int duplex; } ;
struct efx_link_state {scalar_t__ fd; int speed; } ;
struct efx_nic {int mac_lock; TYPE_1__* phy_op; struct efx_link_state link_state; } ;
struct TYPE_2__ {int (* get_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;


 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_Asym_Pause ;
 int SUPPORTED_Pause ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int stub1 (struct efx_nic*,struct ethtool_cmd*) ;

__attribute__((used)) static int efx_ethtool_get_settings(struct net_device *net_dev,
        struct ethtool_cmd *ecmd)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct efx_link_state *link_state = &efx->link_state;

 mutex_lock(&efx->mac_lock);
 efx->phy_op->get_settings(efx, ecmd);
 mutex_unlock(&efx->mac_lock);


 ecmd->supported &= ~SUPPORTED_1000baseT_Half;

 ecmd->supported |= SUPPORTED_Pause | SUPPORTED_Asym_Pause;

 if (LOOPBACK_INTERNAL(efx)) {
  ethtool_cmd_speed_set(ecmd, link_state->speed);
  ecmd->duplex = link_state->fd ? DUPLEX_FULL : DUPLEX_HALF;
 }

 return 0;
}
