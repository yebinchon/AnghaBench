
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prtad; } ;
struct cphy {TYPE_1__ mdio; } ;


 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_AN ;
 int aq100x_power_down (struct cphy*,int ) ;
 int mdio_set_flag (TYPE_1__*,int ,int ,int ,int,int) ;

__attribute__((used)) static int aq100x_autoneg_restart(struct cphy *phy)
{
 int err;

 err = aq100x_power_down(phy, 0);
 if (!err)
  err = mdio_set_flag(&phy->mdio, phy->mdio.prtad,
        MDIO_MMD_AN, MDIO_CTRL1,
        BMCR_ANENABLE | BMCR_ANRESTART, 1);

 return err;
}
