
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethtool_cmd {int advertising; scalar_t__ autoneg; scalar_t__ duplex; } ;
struct efx_nic {int loopback_mode; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int forced_cap; } ;


 int ADVERTISED_Autoneg ;
 int EINVAL ;
 int MC_CMD_PHY_CAP_10000FDX_LBN ;
 int MC_CMD_PHY_CAP_1000FDX_LBN ;
 int MC_CMD_PHY_CAP_1000HDX_LBN ;
 int MC_CMD_PHY_CAP_100FDX_LBN ;
 int MC_CMD_PHY_CAP_100HDX_LBN ;
 int MC_CMD_PHY_CAP_10FDX_LBN ;
 int MC_CMD_PHY_CAP_10HDX_LBN ;
 int MC_CMD_PHY_CAP_AN_LBN ;
 int efx_get_mcdi_phy_flags (struct efx_nic*) ;
 int efx_link_set_advertising (struct efx_nic*,int) ;
 int efx_mcdi_set_link (struct efx_nic*,int,int ,int ,int ) ;
 int ethtool_cmd_speed (struct ethtool_cmd*) ;
 int ethtool_to_mcdi_cap (int) ;

__attribute__((used)) static int efx_mcdi_phy_set_settings(struct efx_nic *efx, struct ethtool_cmd *ecmd)
{
 struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
 u32 caps;
 int rc;

 if (ecmd->autoneg) {
  caps = (ethtool_to_mcdi_cap(ecmd->advertising) |
    1 << MC_CMD_PHY_CAP_AN_LBN);
 } else if (ecmd->duplex) {
  switch (ethtool_cmd_speed(ecmd)) {
  case 10: caps = 1 << MC_CMD_PHY_CAP_10FDX_LBN; break;
  case 100: caps = 1 << MC_CMD_PHY_CAP_100FDX_LBN; break;
  case 1000: caps = 1 << MC_CMD_PHY_CAP_1000FDX_LBN; break;
  case 10000: caps = 1 << MC_CMD_PHY_CAP_10000FDX_LBN; break;
  default: return -EINVAL;
  }
 } else {
  switch (ethtool_cmd_speed(ecmd)) {
  case 10: caps = 1 << MC_CMD_PHY_CAP_10HDX_LBN; break;
  case 100: caps = 1 << MC_CMD_PHY_CAP_100HDX_LBN; break;
  case 1000: caps = 1 << MC_CMD_PHY_CAP_1000HDX_LBN; break;
  default: return -EINVAL;
  }
 }

 rc = efx_mcdi_set_link(efx, caps, efx_get_mcdi_phy_flags(efx),
          efx->loopback_mode, 0);
 if (rc)
  return rc;

 if (ecmd->autoneg) {
  efx_link_set_advertising(
   efx, ecmd->advertising | ADVERTISED_Autoneg);
  phy_cfg->forced_cap = 0;
 } else {
  efx_link_set_advertising(efx, 0);
  phy_cfg->forced_cap = caps;
 }
 return 0;
}
