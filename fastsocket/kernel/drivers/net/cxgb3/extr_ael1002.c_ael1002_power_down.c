
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; } ;


 int MDIO_CTRL1 ;
 int MDIO_CTRL1_LPOWER ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_TXDIS ;
 int mdio_set_flag (TYPE_1__*,int ,int ,int ,int ,int) ;
 int t3_mdio_write (struct cphy*,int ,int ,int) ;

__attribute__((used)) static int ael1002_power_down(struct cphy *phy, int enable)
{
 int err;

 err = t3_mdio_write(phy, MDIO_MMD_PMAPMD, MDIO_PMA_TXDIS, !!enable);
 if (!err)
  err = mdio_set_flag(&phy->mdio, phy->mdio.prtad,
        MDIO_MMD_PMAPMD, MDIO_CTRL1,
        MDIO_CTRL1_LPOWER, enable);
 return err;
}
