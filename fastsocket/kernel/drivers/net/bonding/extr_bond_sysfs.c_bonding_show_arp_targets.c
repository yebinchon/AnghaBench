
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__* arp_targets; } ;
struct bonding {TYPE_1__ params; } ;
typedef int ssize_t ;


 int BOND_MAX_ARP_TARGETS ;
 scalar_t__ sprintf (char*,char*,scalar_t__*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_arp_targets(struct device *d,
     struct device_attribute *attr,
     char *buf)
{
 int i, res = 0;
 struct bonding *bond = to_bond(d);

 for (i = 0; i < BOND_MAX_ARP_TARGETS; i++) {
  if (bond->params.arp_targets[i])
   res += sprintf(buf + res, "%pI4 ",
           &bond->params.arp_targets[i]);
 }
 if (res)
  buf[res-1] = '\n';
 return res;
}
