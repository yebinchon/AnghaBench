
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_device_info {int gen; } ;
struct drm_i915_private {TYPE_2__* dev; struct intel_device_info* info; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int device; } ;


 int DEV_INFO_FLAGS ;
 int DRM_DEBUG_DRIVER (char*,int ,int ,int ) ;

__attribute__((used)) static void i915_dump_device_info(struct drm_i915_private *dev_priv)
{
 const struct intel_device_info *info = dev_priv->info;



 DRM_DEBUG_DRIVER("i915 device info: gen=%i, pciid=0x%04x flags="
    "%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s%s",
    info->gen,
    dev_priv->dev->pdev->device,
    DEV_INFO_FLAGS);


}
