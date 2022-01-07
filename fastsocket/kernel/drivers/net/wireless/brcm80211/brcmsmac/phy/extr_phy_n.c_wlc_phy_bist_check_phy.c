
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ read_phy_reg (struct brcms_phy*,int) ;

bool wlc_phy_bist_check_phy(struct brcms_phy_pub *pih)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 u32 phybist0, phybist1, phybist2, phybist3, phybist4;

 if (NREV_GE(pi->pubpi.phy_rev, 16))
  return 1;

 phybist0 = read_phy_reg(pi, 0x0e);
 phybist1 = read_phy_reg(pi, 0x0f);
 phybist2 = read_phy_reg(pi, 0xea);
 phybist3 = read_phy_reg(pi, 0xeb);
 phybist4 = read_phy_reg(pi, 0x156);

 if ((phybist0 == 0) && (phybist1 == 0x4000) && (phybist2 == 0x1fe0) &&
     (phybist3 == 0) && (phybist4 == 0))
  return 1;

 return 0;
}
