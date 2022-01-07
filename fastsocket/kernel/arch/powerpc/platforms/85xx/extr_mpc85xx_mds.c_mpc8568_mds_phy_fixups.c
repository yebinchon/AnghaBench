
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int phy_read (struct phy_device*,int) ;
 int phy_write (struct phy_device*,int,int) ;

__attribute__((used)) static int mpc8568_mds_phy_fixups(struct phy_device *phydev)
{
 int temp;
 int err;


 err = phy_write(phydev,29, 0x0006);

 if (err)
  return err;

 temp = phy_read(phydev, 30);

 if (temp < 0)
  return temp;

 temp = (temp & (~0x8000)) | 0x4000;
 err = phy_write(phydev,30, temp);

 if (err)
  return err;

 err = phy_write(phydev,29, 0x000a);

 if (err)
  return err;

 temp = phy_read(phydev, 30);

 if (temp < 0)
  return temp;

 temp = phy_read(phydev, 30);

 if (temp < 0)
  return temp;

 temp &= ~0x0020;

 err = phy_write(phydev,30,temp);

 if (err)
  return err;


 temp = phy_read(phydev, 16);

 if (temp < 0)
  return temp;

 temp &= ~0x0060;
 err = phy_write(phydev,16,temp);

 return err;
}
