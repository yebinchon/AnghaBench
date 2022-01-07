
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ccwgroup_device {TYPE_2__** cdev; } ;
typedef int ssize_t ;
struct TYPE_3__ {size_t driver_info; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int ENODEV ;
 char** lcs_type ;
 int sprintf (char*,char*,char*) ;
 struct ccwgroup_device* to_ccwgroupdev (struct device*) ;

__attribute__((used)) static ssize_t
lcs_type_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct ccwgroup_device *cgdev;

 cgdev = to_ccwgroupdev(dev);
 if (!cgdev)
  return -ENODEV;

 return sprintf(buf, "%s\n", lcs_type[cgdev->cdev[0]->id.driver_info]);
}
