
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_master {struct drm_i915_master_private* driver_priv; } ;
struct drm_i915_master_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_i915_master_private* kzalloc (int,int ) ;

int i915_master_create(struct drm_device *dev, struct drm_master *master)
{
 struct drm_i915_master_private *master_priv;

 master_priv = kzalloc(sizeof(*master_priv), GFP_KERNEL);
 if (!master_priv)
  return -ENOMEM;

 master->driver_priv = master_priv;
 return 0;
}
