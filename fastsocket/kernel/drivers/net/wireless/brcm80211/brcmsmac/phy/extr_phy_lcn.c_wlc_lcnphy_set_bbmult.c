
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct phytbl_info {int* tbl_ptr; int tbl_len; int tbl_offset; int tbl_width; int tbl_id; } ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_TBL_ID_IQLOCAL ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

__attribute__((used)) static void wlc_lcnphy_set_bbmult(struct brcms_phy *pi, u8 m0)
{
 u16 m0m1 = (u16) m0 << 8;
 struct phytbl_info tab;

 tab.tbl_ptr = &m0m1;
 tab.tbl_len = 1;
 tab.tbl_id = LCNPHY_TBL_ID_IQLOCAL;
 tab.tbl_offset = 87;
 tab.tbl_width = 16;
 wlc_lcnphy_write_table(pi, &tab);
}
