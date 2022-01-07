
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EPERM ;

__attribute__((used)) static ssize_t
sysfs_mbox_write(struct file *filp, struct kobject *kobj,
   struct bin_attribute *bin_attr,
   char *buf, loff_t off, size_t count)
{
 return -EPERM;
}
