
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int tbl_offset; int * tbl_ptr; int tbl_id; } ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_TBL_ID_IQLOCAL ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

void wlc_lcnphy_set_tx_locc(struct brcms_phy *pi, u16 didq)
{
 struct phytbl_info tab;

 tab.tbl_id = LCNPHY_TBL_ID_IQLOCAL;
 tab.tbl_width = 16;
 tab.tbl_ptr = &didq;
 tab.tbl_len = 1;
 tab.tbl_offset = 85;
 wlc_lcnphy_write_table(pi, &tab);
}
