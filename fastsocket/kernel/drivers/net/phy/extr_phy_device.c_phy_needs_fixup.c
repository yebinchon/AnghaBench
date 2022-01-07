
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_fixup {int phy_uid; int phy_uid_mask; int bus_id; } ;
struct phy_device {int phy_id; int dev; } ;


 int PHY_ANY_ID ;
 int PHY_ANY_UID ;
 int dev_name (int *) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int phy_needs_fixup(struct phy_device *phydev, struct phy_fixup *fixup)
{
 if (strcmp(fixup->bus_id, dev_name(&phydev->dev)) != 0)
  if (strcmp(fixup->bus_id, PHY_ANY_ID) != 0)
   return 0;

 if ((fixup->phy_uid & fixup->phy_uid_mask) !=
   (phydev->phy_id & fixup->phy_uid_mask))
  if (fixup->phy_uid != PHY_ANY_UID)
   return 0;

 return 1;
}
