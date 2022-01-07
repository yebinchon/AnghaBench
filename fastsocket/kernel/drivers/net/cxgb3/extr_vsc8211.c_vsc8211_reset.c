
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_DEVAD_NONE ;
 int t3_phy_reset (struct cphy*,int ,int ) ;

__attribute__((used)) static int vsc8211_reset(struct cphy *cphy, int wait)
{
 return t3_phy_reset(cphy, MDIO_DEVAD_NONE, 0);
}
