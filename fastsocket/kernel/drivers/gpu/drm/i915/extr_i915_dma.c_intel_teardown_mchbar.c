
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct TYPE_4__ {TYPE_2__ mch_res; int bridge_dev; scalar_t__ mchbar_need_disable; } ;
typedef TYPE_1__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;


 int DEVEN_MCHBAR_EN ;
 int DEVEN_REG ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_I915G (struct drm_device*) ;
 scalar_t__ IS_I915GM (struct drm_device*) ;
 int MCHBAR_I915 ;
 int MCHBAR_I965 ;
 int pci_read_config_dword (int ,int,int*) ;
 int pci_write_config_dword (int ,int,int) ;
 int release_resource (TYPE_2__*) ;

__attribute__((used)) static void
intel_teardown_mchbar(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int mchbar_reg = INTEL_INFO(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 u32 temp;

 if (dev_priv->mchbar_need_disable) {
  if (IS_I915G(dev) || IS_I915GM(dev)) {
   pci_read_config_dword(dev_priv->bridge_dev, DEVEN_REG, &temp);
   temp &= ~DEVEN_MCHBAR_EN;
   pci_write_config_dword(dev_priv->bridge_dev, DEVEN_REG, temp);
  } else {
   pci_read_config_dword(dev_priv->bridge_dev, mchbar_reg, &temp);
   temp &= ~1;
   pci_write_config_dword(dev_priv->bridge_dev, mchbar_reg, temp);
  }
 }

 if (dev_priv->mch_res.start)
  release_resource(&dev_priv->mch_res);
}
