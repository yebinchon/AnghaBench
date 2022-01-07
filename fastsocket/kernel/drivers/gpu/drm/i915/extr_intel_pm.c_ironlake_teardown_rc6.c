
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* pwrctx; TYPE_2__* renderctx; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int base; } ;


 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_unpin (TYPE_2__*) ;

void ironlake_teardown_rc6(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->ips.renderctx) {
  i915_gem_object_unpin(dev_priv->ips.renderctx);
  drm_gem_object_unreference(&dev_priv->ips.renderctx->base);
  dev_priv->ips.renderctx = ((void*)0);
 }

 if (dev_priv->ips.pwrctx) {
  i915_gem_object_unpin(dev_priv->ips.pwrctx);
  drm_gem_object_unreference(&dev_priv->ips.pwrctx->base);
  dev_priv->ips.pwrctx = ((void*)0);
 }
}
