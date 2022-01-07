
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct expander_device {int num_phys; TYPE_1__* ex_phy; } ;
struct domain_device {struct expander_device ex_dev; } ;
struct TYPE_2__ {int phy_change_count; } ;





 int sas_get_phy_change_count (struct domain_device*,int,int*) ;

__attribute__((used)) static int sas_find_bcast_phy(struct domain_device *dev, int *phy_id,
         int from_phy, bool update)
{
 struct expander_device *ex = &dev->ex_dev;
 int res = 0;
 int i;

 for (i = from_phy; i < ex->num_phys; i++) {
  int phy_change_count = 0;

  res = sas_get_phy_change_count(dev, i, &phy_change_count);
  switch (res) {
  case 128:
  case 129:
   continue;
  case 130:
   break;
  default:
   return res;
  }

  if (phy_change_count != ex->ex_phy[i].phy_change_count) {
   if (update)
    ex->ex_phy[i].phy_change_count =
     phy_change_count;
   *phy_id = i;
   return 0;
  }
 }
 return 0;
}
