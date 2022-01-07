
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expander_device {int num_phys; struct ex_phy* ex_phy; } ;
struct ex_phy {int attached_sas_addr; } ;
struct domain_device {int sas_addr; struct expander_device ex_dev; } ;


 scalar_t__ SAS_ADDR (int ) ;
 int SAS_DPRINTK (char*,int const,int const) ;
 int sas_discover_new (struct domain_device*,int const) ;
 int sas_rediscover_dev (struct domain_device*,int const,int) ;

__attribute__((used)) static int sas_rediscover(struct domain_device *dev, const int phy_id)
{
 struct expander_device *ex = &dev->ex_dev;
 struct ex_phy *changed_phy = &ex->ex_phy[phy_id];
 int res = 0;
 int i;
 bool last = 1;

 SAS_DPRINTK("ex %016llx phy%d originated BROADCAST(CHANGE)\n",
      SAS_ADDR(dev->sas_addr), phy_id);

 if (SAS_ADDR(changed_phy->attached_sas_addr) != 0) {
  for (i = 0; i < ex->num_phys; i++) {
   struct ex_phy *phy = &ex->ex_phy[i];

   if (i == phy_id)
    continue;
   if (SAS_ADDR(phy->attached_sas_addr) ==
       SAS_ADDR(changed_phy->attached_sas_addr)) {
    SAS_DPRINTK("phy%d part of wide port with "
         "phy%d\n", phy_id, i);
    last = 0;
    break;
   }
  }
  res = sas_rediscover_dev(dev, phy_id, last);
 } else
  res = sas_discover_new(dev, phy_id);
 return res;
}
