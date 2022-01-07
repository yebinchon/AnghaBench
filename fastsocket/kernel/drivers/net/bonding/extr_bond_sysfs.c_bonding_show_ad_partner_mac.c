
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct bonding {TYPE_1__ params; } ;
struct ad_info {int partner_system; } ;
typedef int ssize_t ;


 scalar_t__ BOND_MODE_8023AD ;
 int bond_3ad_get_active_agg_info (struct bonding*,struct ad_info*) ;
 int sprintf (char*,char*,int ) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_ad_partner_mac(struct device *d,
        struct device_attribute *attr,
        char *buf)
{
 int count = 0;
 struct bonding *bond = to_bond(d);

 if (bond->params.mode == BOND_MODE_8023AD) {
  struct ad_info ad_info;
  if (!bond_3ad_get_active_agg_info(bond, &ad_info))
   count = sprintf(buf, "%pM\n", ad_info.partner_system);
 }

 return count;
}
