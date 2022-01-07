
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int MII_LXT970_CONFIG ;
 int phy_write (struct phy_device*,int ,int ) ;

__attribute__((used)) static int lxt970_config_init(struct phy_device *phydev)
{
 int err;

 err = phy_write(phydev, MII_LXT970_CONFIG, 0);

 return err;
}
