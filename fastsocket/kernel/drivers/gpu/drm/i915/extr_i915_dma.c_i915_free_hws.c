
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ gfx_addr; } ;
struct intel_ring_buffer {TYPE_2__ status_page; } ;
struct drm_device {TYPE_3__* dev_private; } ;
struct TYPE_5__ {int gfx_hws_cpu_addr; } ;
struct TYPE_7__ {TYPE_1__ dri1; int * status_page_dmah; } ;
typedef TYPE_3__ drm_i915_private_t ;


 int HWS_PGA ;
 int I915_WRITE (int ,int) ;
 struct intel_ring_buffer* LP_RING (TYPE_3__*) ;
 int drm_pci_free (struct drm_device*,int *) ;
 int iounmap (int ) ;

__attribute__((used)) static void i915_free_hws(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_ring_buffer *ring = LP_RING(dev_priv);

 if (dev_priv->status_page_dmah) {
  drm_pci_free(dev, dev_priv->status_page_dmah);
  dev_priv->status_page_dmah = ((void*)0);
 }

 if (ring->status_page.gfx_addr) {
  ring->status_page.gfx_addr = 0;
  iounmap(dev_priv->dri1.gfx_hws_cpu_addr);
 }


 I915_WRITE(HWS_PGA, 0x1ffff000);
}
