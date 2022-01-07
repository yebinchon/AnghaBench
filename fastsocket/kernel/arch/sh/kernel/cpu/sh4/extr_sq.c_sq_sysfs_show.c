
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sq_sysfs_attr {int (* show ) (char*) ;} ;
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 scalar_t__ likely (int (*) (char*)) ;
 int stub1 (char*) ;
 struct sq_sysfs_attr* to_sq_sysfs_attr (struct attribute*) ;

__attribute__((used)) static ssize_t sq_sysfs_show(struct kobject *kobj, struct attribute *attr,
        char *buf)
{
 struct sq_sysfs_attr *sattr = to_sq_sysfs_attr(attr);

 if (likely(sattr->show))
  return sattr->show(buf);

 return -EIO;
}
