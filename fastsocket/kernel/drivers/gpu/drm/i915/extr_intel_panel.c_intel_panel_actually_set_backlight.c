
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int pdev; struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_CTL ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int PCI_LBPC ;
 int intel_panel_compute_brightness (struct drm_device*,int) ;
 int intel_panel_get_max_backlight (struct drm_device*) ;
 void intel_pch_panel_set_backlight (struct drm_device*,int) ;
 scalar_t__ is_backlight_combination_mode (struct drm_device*) ;
 int pci_write_config_byte (int ,int ,int) ;

__attribute__((used)) static void intel_panel_actually_set_backlight(struct drm_device *dev, u32 level)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 tmp;

 DRM_DEBUG_DRIVER("set backlight PWM = %d\n", level);
 level = intel_panel_compute_brightness(dev, level);

 if (HAS_PCH_SPLIT(dev))
  return intel_pch_panel_set_backlight(dev, level);

 if (is_backlight_combination_mode(dev)) {
  u32 max = intel_panel_get_max_backlight(dev);
  u8 lbpc;

  lbpc = level * 0xfe / max + 1;
  level /= lbpc;
  pci_write_config_byte(dev->pdev, PCI_LBPC, lbpc);
 }

 tmp = I915_READ(BLC_PWM_CTL);
 if (INTEL_INFO(dev)->gen < 4)
  level <<= 1;
 tmp &= ~BACKLIGHT_DUTY_CYCLE_MASK;
 I915_WRITE(BLC_PWM_CTL, tmp | level);
}
