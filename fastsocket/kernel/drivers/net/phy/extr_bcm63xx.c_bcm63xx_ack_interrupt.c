
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_BCM63XX_IR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int bcm63xx_ack_interrupt(struct phy_device *phydev)
{
 int reg;


 reg = phy_read(phydev, MII_BCM63XX_IR);
 if (reg < 0)
  return reg;

 return 0;
}
