
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int and_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_lcnphy_clear_trsw_override(struct brcms_phy *pi)
{

 and_phy_reg(pi, 0x44c, (u16) ~((0x1 << 1) | (0x1 << 0)));
}
