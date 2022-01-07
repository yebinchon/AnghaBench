
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phytbl_info {int dummy; } ;
struct brcms_phy {int dummy; } ;


 int wlc_phy_write_table (struct brcms_phy*,struct phytbl_info const*,int,int,int) ;

void wlc_lcnphy_write_table(struct brcms_phy *pi, const struct phytbl_info *pti)
{
 wlc_phy_write_table(pi, pti, 0x455, 0x457, 0x456);
}
