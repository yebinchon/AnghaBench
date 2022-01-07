
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct efx_nic {struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int flags; } ;


 unsigned int ETH_TEST_FL_OFFLINE ;
 int MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN ;
 int MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN ;
 int MC_CMD_GET_PHY_CFG_OUT_BIST_LBN ;
 scalar_t__ MC_CMD_PHY_BIST ;
 scalar_t__ MC_CMD_PHY_BIST_CABLE_LONG ;
 scalar_t__ MC_CMD_PHY_BIST_CABLE_SHORT ;
 int efx_mcdi_bist (struct efx_nic*,scalar_t__,int*) ;

__attribute__((used)) static int efx_mcdi_phy_run_tests(struct efx_nic *efx, int *results,
      unsigned flags)
{
 struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
 u32 mode;
 int rc;

 if (phy_cfg->flags & (1 << MC_CMD_GET_PHY_CFG_OUT_BIST_LBN)) {
  rc = efx_mcdi_bist(efx, MC_CMD_PHY_BIST, results);
  if (rc < 0)
   return rc;

  results += rc;
 }



 mode = 0;
 if (phy_cfg->flags & (1 << MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN)) {
  if ((flags & ETH_TEST_FL_OFFLINE) &&
      (phy_cfg->flags &
       (1 << MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN)))
   mode = MC_CMD_PHY_BIST_CABLE_LONG;
  else
   mode = MC_CMD_PHY_BIST_CABLE_SHORT;
 } else if (phy_cfg->flags &
     (1 << MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN))
  mode = MC_CMD_PHY_BIST_CABLE_LONG;

 if (mode != 0) {
  rc = efx_mcdi_bist(efx, mode, results);
  if (rc < 0)
   return rc;
  results += rc;
 }

 return 0;
}
