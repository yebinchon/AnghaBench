
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy_device {size_t addr; TYPE_1__* bus; int dev; } ;
struct TYPE_2__ {struct phy_device** phy_map; } ;


 int EINVAL ;
 int device_register (int *) ;
 int phy_scan_fixups (struct phy_device*) ;
 int pr_err (char*,size_t) ;

int phy_device_register(struct phy_device *phydev)
{
 int err;



 if (phydev->bus->phy_map[phydev->addr])
  return -EINVAL;
 phydev->bus->phy_map[phydev->addr] = phydev;


 phy_scan_fixups(phydev);

 err = device_register(&phydev->dev);
 if (err) {
  pr_err("phy %d failed to register\n", phydev->addr);
  goto out;
 }

 return 0;

 out:
 phydev->bus->phy_map[phydev->addr] = ((void*)0);
 return err;
}
