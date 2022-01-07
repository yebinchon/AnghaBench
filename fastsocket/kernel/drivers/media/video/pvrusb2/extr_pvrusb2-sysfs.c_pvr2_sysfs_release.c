
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (struct device*) ;
 int pvr2_sysfs_trace (char*,struct device*) ;

__attribute__((used)) static void pvr2_sysfs_release(struct device *class_dev)
{
 pvr2_sysfs_trace("Releasing class_dev id=%p",class_dev);
 kfree(class_dev);
}
