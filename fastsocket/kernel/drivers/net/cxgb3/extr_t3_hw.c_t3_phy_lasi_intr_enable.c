
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_LSALARM ;
 int t3_mdio_write (struct cphy*,int ,int ,int ) ;

int t3_phy_lasi_intr_enable(struct cphy *phy)
{
 return t3_mdio_write(phy, MDIO_MMD_PMAPMD, MDIO_PMA_LASI_CTRL,
        MDIO_PMA_LASI_LSALARM);
}
