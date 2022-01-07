
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {int link_status; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ;
 int LINK_STATUS_PARALLEL_DETECTION_USED ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_STATUS ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;

__attribute__((used)) static void bnx2x_ext_phy_10G_an_resolve(struct bnx2x *bp,
           struct bnx2x_phy *phy,
           struct link_vars *vars)
{
 u16 val;
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD,
   MDIO_AN_REG_STATUS, &val);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD,
   MDIO_AN_REG_STATUS, &val);
 if (val & (1<<5))
  vars->link_status |= LINK_STATUS_AUTO_NEGOTIATE_COMPLETE;
 if ((val & (1<<0)) == 0)
  vars->link_status |= LINK_STATUS_PARALLEL_DETECTION_USED;
}
