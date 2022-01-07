
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_i915_private {int bridge_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int INTEL_GMCH_CTRL ;
 int INTEL_GMCH_VGA_DISABLE ;
 int pci_read_config_word (int ,int ,int *) ;
 int pci_write_config_word (int ,int ,int ) ;

int intel_modeset_vga_set_state(struct drm_device *dev, bool state)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u16 gmch_ctrl;

 pci_read_config_word(dev_priv->bridge_dev, INTEL_GMCH_CTRL, &gmch_ctrl);
 if (state)
  gmch_ctrl &= ~INTEL_GMCH_VGA_DISABLE;
 else
  gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 pci_write_config_word(dev_priv->bridge_dev, INTEL_GMCH_CTRL, gmch_ctrl);
 return 0;
}
