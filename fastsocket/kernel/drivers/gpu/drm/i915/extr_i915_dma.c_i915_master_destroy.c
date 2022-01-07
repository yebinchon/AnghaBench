
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {struct drm_i915_master_private* driver_priv; } ;
struct drm_i915_master_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int kfree (struct drm_i915_master_private*) ;

void i915_master_destroy(struct drm_device *dev, struct drm_master *master)
{
 struct drm_i915_master_private *master_priv = master->driver_priv;

 if (!master_priv)
  return;

 kfree(master_priv);

 master->driver_priv = ((void*)0);
}
