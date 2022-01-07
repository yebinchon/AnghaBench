
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct phytbl_info {int tbl_width; int tbl_len; int tbl_offset; int * tbl_ptr; scalar_t__ tbl_id; } ;
struct brcms_phy {int dummy; } ;


 int wlc_lcnphy_read_table (struct brcms_phy*,struct phytbl_info*) ;

u16 wlc_lcnphy_get_tx_locc(struct brcms_phy *pi)
{
 struct phytbl_info tab;
 u16 didq;

 tab.tbl_id = 0;
 tab.tbl_width = 16;
 tab.tbl_ptr = &didq;
 tab.tbl_len = 1;
 tab.tbl_offset = 85;
 wlc_lcnphy_read_table(pi, &tab);

 return didq;
}
