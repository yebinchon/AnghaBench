
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;


 int kfree (struct phy_device*) ;

void phy_device_free(struct phy_device *phydev)
{
 kfree(phydev);
}
