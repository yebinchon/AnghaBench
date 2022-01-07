
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int dummy; } ;


 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int wlc_phy_n_txpower_ipa_ison (struct brcms_phy*) ;

bool wlc_phy_txpower_ipa_ison(struct brcms_phy_pub *ppi)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 if (ISNPHY(pi))
  return wlc_phy_n_txpower_ipa_ison(pi);
 else
  return 0;
}
