
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int sprintf (char*,char*) ;
 TYPE_1__* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static ssize_t
ccwgroup_online_show (struct device *dev, struct device_attribute *attr, char *buf)
{
 int online;

 online = (to_ccwgroupdev(dev)->state == CCWGROUP_ONLINE);

 return sprintf(buf, online ? "1\n" : "0\n");
}
