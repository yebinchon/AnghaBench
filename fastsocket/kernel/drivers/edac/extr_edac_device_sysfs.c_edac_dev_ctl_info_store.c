
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct edac_device_ctl_info {int dummy; } ;
struct ctl_info_attribute {int (* store ) (struct edac_device_ctl_info*,char const*,size_t) ;} ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int EIO ;
 int stub1 (struct edac_device_ctl_info*,char const*,size_t) ;
 struct edac_device_ctl_info* to_ctl_info (struct kobject*) ;
 struct ctl_info_attribute* to_ctl_info_attr (struct attribute*) ;

__attribute__((used)) static ssize_t edac_dev_ctl_info_store(struct kobject *kobj,
    struct attribute *attr,
    const char *buffer, size_t count)
{
 struct edac_device_ctl_info *edac_dev = to_ctl_info(kobj);
 struct ctl_info_attribute *ctl_info_attr = to_ctl_info_attr(attr);

 if (ctl_info_attr->store)
  return ctl_info_attr->store(edac_dev, buffer, count);
 return -EIO;
}
