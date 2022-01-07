
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_file_private {int context_idr; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; } ;


 int context_idr_cleanup ;
 int idr_destroy (int *) ;
 int idr_for_each (int *,int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i915_gem_context_close(struct drm_device *dev, struct drm_file *file)
{
 struct drm_i915_file_private *file_priv = file->driver_priv;

 mutex_lock(&dev->struct_mutex);
 idr_for_each(&file_priv->context_idr, context_idr_cleanup, ((void*)0));
 idr_destroy(&file_priv->context_idr);
 mutex_unlock(&dev->struct_mutex);
}
