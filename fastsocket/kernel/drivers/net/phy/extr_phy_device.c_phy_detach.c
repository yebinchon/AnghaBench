
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * driver; } ;
struct phy_device {TYPE_2__ dev; int * attached_dev; } ;
struct TYPE_3__ {int driver; } ;


 int device_release_driver (TYPE_2__*) ;
 TYPE_1__ genphy_driver ;

void phy_detach(struct phy_device *phydev)
{
 phydev->attached_dev = ((void*)0);





 if (phydev->dev.driver == &genphy_driver.driver)
  device_release_driver(&phydev->dev);
}
