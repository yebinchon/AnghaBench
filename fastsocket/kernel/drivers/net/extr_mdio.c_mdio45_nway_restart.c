
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdio_if_info {int mmds; int prtad; } ;


 int EOPNOTSUPP ;
 int MDIO_AN_CTRL1_RESTART ;
 int MDIO_CTRL1 ;
 int MDIO_DEVS_AN ;
 int MDIO_MMD_AN ;
 int mdio_set_flag (struct mdio_if_info const*,int ,int ,int ,int ,int) ;

int mdio45_nway_restart(const struct mdio_if_info *mdio)
{
 if (!(mdio->mmds & MDIO_DEVS_AN))
  return -EOPNOTSUPP;

 mdio_set_flag(mdio, mdio->prtad, MDIO_MMD_AN, MDIO_CTRL1,
        MDIO_AN_CTRL1_RESTART, 1);
 return 0;
}
