
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {TYPE_1__* status_page_dmah; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;
struct TYPE_4__ {int busaddr; } ;


 int HWS_PGA ;
 int I915_WRITE (int ,int) ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;

__attribute__((used)) static void i915_write_hws_pga(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 u32 addr;

 addr = dev_priv->status_page_dmah->busaddr;
 if (INTEL_INFO(dev)->gen >= 4)
  addr |= (dev_priv->status_page_dmah->busaddr >> 28) & 0xf0;
 I915_WRITE(HWS_PGA, addr);
}
