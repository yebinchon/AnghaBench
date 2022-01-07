
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phytbl_info {int tbl_len; int tbl_offset; int tbl_width; scalar_t__ tbl_id; int * tbl_ptr; } ;
struct brcms_phy {int dummy; } ;


 int wlc_lcnphy_read_table (struct brcms_phy*,struct phytbl_info*) ;

void wlc_lcnphy_get_tx_iqcc(struct brcms_phy *pi, u16 *a, u16 *b)
{
 u16 iqcc[2];
 struct phytbl_info tab;

 tab.tbl_ptr = iqcc;
 tab.tbl_len = 2;
 tab.tbl_id = 0;
 tab.tbl_offset = 80;
 tab.tbl_width = 16;
 wlc_lcnphy_read_table(pi, &tab);

 *a = iqcc[0];
 *b = iqcc[1];
}
