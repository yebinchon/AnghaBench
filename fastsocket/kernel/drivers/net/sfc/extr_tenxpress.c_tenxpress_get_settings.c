
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_cmd {int dummy; } ;
struct efx_nic {int mdio; } ;


 int ADVERTISED_10000baseT_Full ;
 scalar_t__ LOOPBACK_EXTERNAL (struct efx_nic*) ;
 int MDIO_AN_10GBT_CTRL ;
 int MDIO_AN_10GBT_CTRL_ADV10G ;
 int MDIO_AN_10GBT_STAT ;
 int MDIO_AN_10GBT_STAT_LP10G ;
 int MDIO_MMD_AN ;
 int SPEED_10000 ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int ethtool_cmd_speed_set (struct ethtool_cmd*,int ) ;
 int mdio45_ethtool_gset_npage (int *,struct ethtool_cmd*,int ,int ) ;

__attribute__((used)) static void
tenxpress_get_settings(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
 u32 adv = 0, lpa = 0;
 int reg;

 reg = efx_mdio_read(efx, MDIO_MMD_AN, MDIO_AN_10GBT_CTRL);
 if (reg & MDIO_AN_10GBT_CTRL_ADV10G)
  adv |= ADVERTISED_10000baseT_Full;
 reg = efx_mdio_read(efx, MDIO_MMD_AN, MDIO_AN_10GBT_STAT);
 if (reg & MDIO_AN_10GBT_STAT_LP10G)
  lpa |= ADVERTISED_10000baseT_Full;

 mdio45_ethtool_gset_npage(&efx->mdio, ecmd, adv, lpa);



 if (LOOPBACK_EXTERNAL(efx))
  ethtool_cmd_speed_set(ecmd, SPEED_10000);
}
