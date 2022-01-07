
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_phy_db {int dummy; } ;


 int IWL_NUM_PAPD_CH_GROUPS ;
 int IWL_NUM_TXP_CH_GROUPS ;
 int IWL_PHY_DB_CALIB_CH ;
 int IWL_PHY_DB_CALIB_CHG_PAPD ;
 int IWL_PHY_DB_CALIB_CHG_TXP ;
 int IWL_PHY_DB_CALIB_NCH ;
 int IWL_PHY_DB_CFG ;
 int iwl_phy_db_free_section (struct iwl_phy_db*,int ,int) ;
 int kfree (struct iwl_phy_db*) ;

void iwl_phy_db_free(struct iwl_phy_db *phy_db)
{
 int i;

 if (!phy_db)
  return;

 iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CFG, 0);
 iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_NCH, 0);
 iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_CH, 0);
 for (i = 0; i < IWL_NUM_PAPD_CH_GROUPS; i++)
  iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_CHG_PAPD, i);
 for (i = 0; i < IWL_NUM_TXP_CH_GROUPS; i++)
  iwl_phy_db_free_section(phy_db, IWL_PHY_DB_CALIB_CHG_TXP, i);

 kfree(phy_db);
}
