
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_1__* primary; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {TYPE_2__ kdev; } ;


 int DRM_ERROR (char*) ;
 scalar_t__ HAS_L3_GPU_CACHE (struct drm_device*) ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 int device_create_bin_file (TYPE_2__*,int *) ;
 int dpf_attrs ;
 int gen6_attr_group ;
 int rc6_attr_group ;
 int sysfs_merge_group (int *,int *) ;

void i915_setup_sysfs(struct drm_device *dev)
{
 int ret;
 if (HAS_L3_GPU_CACHE(dev)) {
  ret = device_create_bin_file(&dev->primary->kdev, &dpf_attrs);
  if (ret)
   DRM_ERROR("l3 parity sysfs setup failed\n");
 }

 if (INTEL_INFO(dev)->gen >= 6) {
  ret = sysfs_merge_group(&dev->primary->kdev.kobj, &gen6_attr_group);
  if (ret)
   DRM_ERROR("gen6 sysfs setup failed\n");
 }
}
