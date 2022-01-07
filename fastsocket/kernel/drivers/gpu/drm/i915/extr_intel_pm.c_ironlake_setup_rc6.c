
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pwrctx; int * renderctx; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int ENOMEM ;
 void* intel_alloc_context_page (struct drm_device*) ;
 int ironlake_teardown_rc6 (struct drm_device*) ;

__attribute__((used)) static int ironlake_setup_rc6(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->ips.renderctx == ((void*)0))
  dev_priv->ips.renderctx = intel_alloc_context_page(dev);
 if (!dev_priv->ips.renderctx)
  return -ENOMEM;

 if (dev_priv->ips.pwrctx == ((void*)0))
  dev_priv->ips.pwrctx = intel_alloc_context_page(dev);
 if (!dev_priv->ips.pwrctx) {
  ironlake_teardown_rc6(dev);
  return -ENOMEM;
 }

 return 0;
}
