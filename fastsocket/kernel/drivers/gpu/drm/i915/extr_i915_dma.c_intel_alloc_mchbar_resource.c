
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_9__ {char* name; scalar_t__ start; int flags; } ;
struct TYPE_7__ {TYPE_4__ mch_res; TYPE_2__* bridge_dev; } ;
typedef TYPE_1__ drm_i915_private_t ;
struct TYPE_10__ {int gen; } ;
struct TYPE_8__ {int bus; } ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 TYPE_6__* INTEL_INFO (struct drm_device*) ;
 int IORESOURCE_MEM ;
 int MCHBAR_I915 ;
 int MCHBAR_I965 ;
 scalar_t__ MCHBAR_SIZE ;
 int PCIBIOS_MIN_MEM ;
 int lower_32_bits (scalar_t__) ;
 int pci_bus_alloc_resource (int ,TYPE_4__*,scalar_t__,scalar_t__,int ,int ,int ,TYPE_2__*) ;
 int pci_read_config_dword (TYPE_2__*,int,int*) ;
 int pci_write_config_dword (TYPE_2__*,int,int ) ;
 int pcibios_align_resource ;
 scalar_t__ pnp_range_reserved (int,scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int
intel_alloc_mchbar_resource(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int reg = INTEL_INFO(dev)->gen >= 4 ? MCHBAR_I965 : MCHBAR_I915;
 u32 temp_lo, temp_hi = 0;
 u64 mchbar_addr;
 int ret;

 if (INTEL_INFO(dev)->gen >= 4)
  pci_read_config_dword(dev_priv->bridge_dev, reg + 4, &temp_hi);
 pci_read_config_dword(dev_priv->bridge_dev, reg, &temp_lo);
 mchbar_addr = ((u64)temp_hi << 32) | temp_lo;
 dev_priv->mch_res.name = "i915 MCHBAR";
 dev_priv->mch_res.flags = IORESOURCE_MEM;
 ret = pci_bus_alloc_resource(dev_priv->bridge_dev->bus,
         &dev_priv->mch_res,
         MCHBAR_SIZE, MCHBAR_SIZE,
         PCIBIOS_MIN_MEM,
         0, pcibios_align_resource,
         dev_priv->bridge_dev);
 if (ret) {
  DRM_DEBUG_DRIVER("failed bus alloc: %d\n", ret);
  dev_priv->mch_res.start = 0;
  return ret;
 }

 if (INTEL_INFO(dev)->gen >= 4)
  pci_write_config_dword(dev_priv->bridge_dev, reg + 4,
           upper_32_bits(dev_priv->mch_res.start));

 pci_write_config_dword(dev_priv->bridge_dev, reg,
          lower_32_bits(dev_priv->mch_res.start));
 return 0;
}
