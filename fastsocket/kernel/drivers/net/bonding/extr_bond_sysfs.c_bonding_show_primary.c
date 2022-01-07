
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bonding {TYPE_2__* primary_slave; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 struct bonding* to_bond (struct device*) ;

__attribute__((used)) static ssize_t bonding_show_primary(struct device *d,
        struct device_attribute *attr,
        char *buf)
{
 int count = 0;
 struct bonding *bond = to_bond(d);

 if (bond->primary_slave)
  count = sprintf(buf, "%s\n", bond->primary_slave->dev->name);

 return count;
}
