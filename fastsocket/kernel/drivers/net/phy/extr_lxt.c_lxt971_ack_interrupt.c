
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_LXT971_ISR ;
 int phy_read (struct phy_device*,int ) ;

__attribute__((used)) static int lxt971_ack_interrupt(struct phy_device *phydev)
{
 int err = phy_read(phydev, MII_LXT971_ISR);

 if (err < 0)
  return err;

 return 0;
}
