
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct brcms_phy {int dummy; } ;


 scalar_t__ PHY_CORE_0 ;
 int read_phy_reg (struct brcms_phy*,int) ;

__attribute__((used)) static u8 wlc_phy_txpwr_idx_cur_get_nphy(struct brcms_phy *pi, u8 core)
{
 u16 tmp;
 tmp = read_phy_reg(pi, ((core == PHY_CORE_0) ? 0x1ed : 0x1ee));

 tmp = (tmp & (0x7f << 8)) >> 8;
 return (u8) tmp;
}
