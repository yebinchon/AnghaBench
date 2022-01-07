
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_1__* primary; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_3__ {TYPE_2__ kdev; } ;


 int device_remove_bin_file (TYPE_2__*,int *) ;
 int dpf_attrs ;
 int gen6_attr_group ;
 int rc6_attr_group ;
 int sysfs_unmerge_group (int *,int *) ;

void i915_teardown_sysfs(struct drm_device *dev)
{
 sysfs_unmerge_group(&dev->primary->kdev.kobj, &gen6_attr_group);
 device_remove_bin_file(&dev->primary->kdev, &dpf_attrs);



}
