
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int phytest_on; } ;



bool wlc_phy_test_ison(struct brcms_phy_pub *ppi)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 return pi->phytest_on;
}
