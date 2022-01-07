
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int t3_phy_reset (struct cphy*,int ,int) ;

__attribute__((used)) static int ael1006_reset(struct cphy *phy, int wait)
{
 return t3_phy_reset(phy, MDIO_MMD_PMAPMD, wait);
}
