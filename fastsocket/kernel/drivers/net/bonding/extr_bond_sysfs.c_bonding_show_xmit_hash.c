
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {size_t xmit_policy; } ;
struct bonding {TYPE_1__ params; } ;
typedef int ssize_t ;
struct TYPE_4__ {char* modename; } ;


 int sprintf (char*,char*,char*,size_t) ;
 struct bonding* to_bond (struct device*) ;
 TYPE_2__* xmit_hashtype_tbl ;

__attribute__((used)) static ssize_t bonding_show_xmit_hash(struct device *d,
          struct device_attribute *attr,
          char *buf)
{
 struct bonding *bond = to_bond(d);

 return sprintf(buf, "%s %d\n",
         xmit_hashtype_tbl[bond->params.xmit_policy].modename,
         bond->params.xmit_policy);
}
