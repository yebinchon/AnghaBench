
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int nphy_txpwrctrl; int hwpwrctrl; } ;


 scalar_t__ ISNPHY (struct brcms_phy*) ;

bool wlc_phy_txpower_hw_ctrl_get(struct brcms_phy_pub *ppi)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 if (ISNPHY(pi))
  return pi->nphy_txpwrctrl;
 else
  return pi->hwpwrctrl;
}
