
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_INFO (char*,...) ;
 int I915_READ (int ) ;
 int MCH_SSKPD ;
 int MCH_SSKPD_WM0_MASK ;
 int MCH_SSKPD_WM0_VAL ;

__attribute__((used)) static void gen6_check_mch_setup(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t tmp;

 tmp = I915_READ(MCH_SSKPD);
 if ((tmp & MCH_SSKPD_WM0_MASK) != MCH_SSKPD_WM0_VAL) {
  DRM_INFO("Wrong MCH_SSKPD value: 0x%08x\n", tmp);
  DRM_INFO("This can cause pipe underruns and display issues.\n");
  DRM_INFO("Please upgrade your BIOS to fix this.\n");
 }
}
