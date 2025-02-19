
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int saveDEIER; int saveDEIMR; int saveGTIER; int saveGTIMR; int saveFDI_RXA_IMR; int saveFDI_RXB_IMR; int savePCH_PORT_HOTPLUG; int saveIER; int saveIMR; int saveCACHE_MODE_0; int saveMI_ARB_STATE; int* saveSWF0; int* saveSWF1; int* saveSWF2; int saveLBB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {int struct_mutex; int pdev; struct drm_i915_private* dev_private; } ;


 scalar_t__ CACHE_MODE_0 ;
 scalar_t__ DEIER ;
 scalar_t__ DEIMR ;
 int DRIVER_MODESET ;
 scalar_t__ GTIER ;
 scalar_t__ GTIMR ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_WRITE (scalar_t__,int) ;
 scalar_t__ IER ;
 scalar_t__ IMR ;
 int LBB ;
 scalar_t__ MI_ARB_STATE ;
 scalar_t__ PCH_PORT_HOTPLUG ;
 scalar_t__ SWF00 ;
 scalar_t__ SWF10 ;
 scalar_t__ SWF30 ;
 scalar_t__ _FDI_RXA_IMR ;
 scalar_t__ _FDI_RXB_IMR ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int i915_restore_display (struct drm_device*) ;
 int intel_i2c_reset (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_write_config_byte (int ,int ,int ) ;

int i915_restore_state(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int i;

 pci_write_config_byte(dev->pdev, LBB, dev_priv->regfile.saveLBB);

 mutex_lock(&dev->struct_mutex);

 i915_restore_display(dev);

 if (!drm_core_check_feature(dev, DRIVER_MODESET)) {

  if (HAS_PCH_SPLIT(dev)) {
   I915_WRITE(DEIER, dev_priv->regfile.saveDEIER);
   I915_WRITE(DEIMR, dev_priv->regfile.saveDEIMR);
   I915_WRITE(GTIER, dev_priv->regfile.saveGTIER);
   I915_WRITE(GTIMR, dev_priv->regfile.saveGTIMR);
   I915_WRITE(_FDI_RXA_IMR, dev_priv->regfile.saveFDI_RXA_IMR);
   I915_WRITE(_FDI_RXB_IMR, dev_priv->regfile.saveFDI_RXB_IMR);
   I915_WRITE(PCH_PORT_HOTPLUG, dev_priv->regfile.savePCH_PORT_HOTPLUG);
  } else {
   I915_WRITE(IER, dev_priv->regfile.saveIER);
   I915_WRITE(IMR, dev_priv->regfile.saveIMR);
  }
 }


 I915_WRITE(CACHE_MODE_0, dev_priv->regfile.saveCACHE_MODE_0 | 0xffff0000);


 I915_WRITE(MI_ARB_STATE, dev_priv->regfile.saveMI_ARB_STATE | 0xffff0000);

 for (i = 0; i < 16; i++) {
  I915_WRITE(SWF00 + (i << 2), dev_priv->regfile.saveSWF0[i]);
  I915_WRITE(SWF10 + (i << 2), dev_priv->regfile.saveSWF1[i]);
 }
 for (i = 0; i < 3; i++)
  I915_WRITE(SWF30 + (i << 2), dev_priv->regfile.saveSWF2[i]);

 mutex_unlock(&dev->struct_mutex);

 intel_i2c_reset(dev);

 return 0;
}
