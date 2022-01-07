
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gsm; } ;
struct drm_i915_private {int dev; TYPE_1__ gtt; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int iounmap (int ) ;
 int teardown_scratch_page (int ) ;

__attribute__((used)) static void gen6_gmch_remove(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 iounmap(dev_priv->gtt.gsm);
 teardown_scratch_page(dev_priv->dev);
}
