
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_GT (int ,int) ;
 int mod_phy_reg (struct brcms_phy*,int,int,int ) ;

__attribute__((used)) static void
wlc_phy_txpwr_idx_cur_set_nphy(struct brcms_phy *pi, u8 idx0, u8 idx1)
{
 mod_phy_reg(pi, 0x1e7, (0x7f << 0), idx0);

 if (NREV_GT(pi->pubpi.phy_rev, 1))
  mod_phy_reg(pi, 0x222, (0xff << 0), idx1);
}
