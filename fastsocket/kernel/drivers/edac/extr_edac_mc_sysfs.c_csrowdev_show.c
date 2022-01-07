
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct csrowdev_attribute {int private; int (* show ) (struct csrow_info*,char*,int ) ;} ;
struct csrow_info {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct csrow_info*,char*,int ) ;
 struct csrow_info* to_csrow (struct kobject*) ;
 struct csrowdev_attribute* to_csrowdev_attr (struct attribute*) ;

__attribute__((used)) static ssize_t csrowdev_show(struct kobject *kobj,
   struct attribute *attr, char *buffer)
{
 struct csrow_info *csrow = to_csrow(kobj);
 struct csrowdev_attribute *csrowdev_attr = to_csrowdev_attr(attr);

 if (csrowdev_attr->show)
  return csrowdev_attr->show(csrow,
     buffer, csrowdev_attr->private);
 return -EIO;
}
