
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ interrupts; } ;


 int MII_LAN83C185_IM ;
 int MII_LAN83C185_ISF_INT_PHYLIB_EVENTS ;
 scalar_t__ PHY_INTERRUPT_ENABLED ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int smsc_phy_config_intr(struct phy_device *phydev)
{
 int rc = phy_write (phydev, MII_LAN83C185_IM,
   ((PHY_INTERRUPT_ENABLED == phydev->interrupts)
   ? MII_LAN83C185_ISF_INT_PHYLIB_EVENTS
   : 0));

 return rc < 0 ? rc : 0;
}
