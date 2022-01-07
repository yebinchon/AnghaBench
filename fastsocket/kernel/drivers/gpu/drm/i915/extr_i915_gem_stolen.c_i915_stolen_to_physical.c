
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {TYPE_1__* gtt; } ;
struct drm_i915_private {TYPE_2__ mm; struct pci_dev* bridge_dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_4__ {scalar_t__ stolen_size; } ;


 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_G33 (struct drm_device*) ;
 scalar_t__ IS_GEN3 (struct drm_device*) ;
 int PAGE_SHIFT ;
 int max_low_pfn_mapped ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static unsigned long i915_stolen_to_physical(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct pci_dev *pdev = dev_priv->bridge_dev;
 u32 base;
 base = 0;
 if (INTEL_INFO(dev)->gen >= 6) {




  pci_read_config_dword(pdev, 0xB0, &base);
  base &= ~4095;
 } else if (INTEL_INFO(dev)->gen > 3 || IS_G33(dev)) {

  pci_read_config_dword(pdev, 0xA4, &base);
 }

 return base;
}
