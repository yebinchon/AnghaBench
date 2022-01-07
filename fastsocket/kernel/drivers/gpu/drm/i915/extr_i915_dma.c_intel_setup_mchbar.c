
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int mchbar_need_disable; int bridge_dev; } ;
typedef TYPE_1__ drm_i915_private_t ;
struct TYPE_4__ {int gen; } ;


 int DEVEN_MCHBAR_EN ;
 int DEVEN_REG ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_I915G (struct drm_device*) ;
 scalar_t__ IS_I915GM (struct drm_device*) ;
 int MCHBAR_I915 ;
 int MCHBAR_I965 ;
 scalar_t__ intel_alloc_mchbar_resource (struct drm_device*) ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;

__attribute__((used)) static void
intel_setup_mchbar(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int mchbar_reg = INTEL_INFO(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 u32 temp;
 bool enabled;

 dev_priv->mchbar_need_disable = 0;

 if (IS_I915G(dev) || IS_I915GM(dev)) {
  pci_read_config_dword(dev_priv->bridge_dev, DEVEN_REG, &temp);
  enabled = !!(temp & DEVEN_MCHBAR_EN);
 } else {
  pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
  enabled = temp & 1;
 }


 if (enabled)
  return;

 if (intel_alloc_mchbar_resource(dev))
  return;

 dev_priv->mchbar_need_disable = 1;


 if (IS_I915G(dev) || IS_I915GM(dev)) {
  pci_write_config_dword(dev_priv->bridge_dev, DEVEN_REG,
           temp | DEVEN_MCHBAR_EN);
 } else {
  pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
  pci_write_config_dword(dev_priv->bridge_dev, mchbar_reg, temp | 1);
 }
}
