
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ethtool_cmd {int advertising; scalar_t__ duplex; scalar_t__ port; scalar_t__ autoneg; int supported; int cmd; } ;
struct efx_nic {TYPE_1__* phy_op; } ;
struct TYPE_2__ {int (* get_settings ) (struct efx_nic*,struct ethtool_cmd*) ;} ;


 int ADVERTISED_Autoneg ;
 int EINVAL ;
 int ETHTOOL_GSET ;
 scalar_t__ PORT_TP ;
 int SUPPORTED_Autoneg ;
 int efx_link_set_advertising (struct efx_nic*,int) ;
 int efx_mdio_an_reconfigure (struct efx_nic*) ;
 scalar_t__ ethtool_cmd_speed (struct ethtool_cmd*) ;
 int stub1 (struct efx_nic*,struct ethtool_cmd*) ;

int efx_mdio_set_settings(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
 struct ethtool_cmd prev = { .cmd = ETHTOOL_GSET };

 efx->phy_op->get_settings(efx, &prev);

 if (ecmd->advertising == prev.advertising &&
     ethtool_cmd_speed(ecmd) == ethtool_cmd_speed(&prev) &&
     ecmd->duplex == prev.duplex &&
     ecmd->port == prev.port &&
     ecmd->autoneg == prev.autoneg)
  return 0;


 if (prev.port != PORT_TP || ecmd->port != PORT_TP)
  return -EINVAL;


 if (!ecmd->autoneg ||
     (ecmd->advertising | SUPPORTED_Autoneg) & ~prev.supported)
  return -EINVAL;

 efx_link_set_advertising(efx, ecmd->advertising | ADVERTISED_Autoneg);
 efx_mdio_an_reconfigure(efx);
 return 0;
}
