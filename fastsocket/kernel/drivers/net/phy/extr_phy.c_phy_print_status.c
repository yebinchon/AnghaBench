
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {scalar_t__ duplex; int speed; scalar_t__ link; int dev; } ;


 scalar_t__ DUPLEX_FULL ;
 int dev_name (int *) ;
 int pr_info (char*,int ,char*) ;
 int printk (char*,...) ;

void phy_print_status(struct phy_device *phydev)
{
 pr_info("PHY: %s - Link is %s", dev_name(&phydev->dev),
   phydev->link ? "Up" : "Down");
 if (phydev->link)
  printk(" - %d/%s", phydev->speed,
    DUPLEX_FULL == phydev->duplex ?
    "Full" : "Half");

 printk("\n");
}
