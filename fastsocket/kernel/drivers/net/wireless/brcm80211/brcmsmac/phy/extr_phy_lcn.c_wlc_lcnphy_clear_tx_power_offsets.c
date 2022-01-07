
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phytbl_info {int tbl_width; int tbl_len; int tbl_offset; int * tbl_ptr; int tbl_id; } ;
struct brcms_phy {int dummy; } ;
typedef int data_buf ;


 int LCNPHY_TBL_ID_TXPWRCTL ;
 int LCNPHY_TX_PWR_CTRL_MAC_OFFSET ;
 int LCNPHY_TX_PWR_CTRL_RATE_OFFSET ;
 int memset (int *,int ,int) ;
 int wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

__attribute__((used)) static void wlc_lcnphy_clear_tx_power_offsets(struct brcms_phy *pi)
{
 u32 data_buf[64];
 struct phytbl_info tab;

 memset(data_buf, 0, sizeof(data_buf));

 tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
 tab.tbl_width = 32;
 tab.tbl_ptr = data_buf;

 if (!wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi)) {

  tab.tbl_len = 30;
  tab.tbl_offset = LCNPHY_TX_PWR_CTRL_RATE_OFFSET;
  wlc_lcnphy_write_table(pi, &tab);
 }

 tab.tbl_len = 64;
 tab.tbl_offset = LCNPHY_TX_PWR_CTRL_MAC_OFFSET;
 wlc_lcnphy_write_table(pi, &tab);
}
