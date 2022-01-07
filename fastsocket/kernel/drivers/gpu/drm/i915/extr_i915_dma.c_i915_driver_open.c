
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request_list; int lock; } ;
struct drm_i915_file_private {int context_idr; TYPE_1__ mm; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int idr_init (int *) ;
 struct drm_i915_file_private* kmalloc (int,int ) ;
 int spin_lock_init (int *) ;

int i915_driver_open(struct drm_device *dev, struct drm_file *file)
{
 struct drm_i915_file_private *file_priv;

 DRM_DEBUG_DRIVER("\n");
 file_priv = kmalloc(sizeof(*file_priv), GFP_KERNEL);
 if (!file_priv)
  return -ENOMEM;

 file->driver_priv = file_priv;

 spin_lock_init(&file_priv->mm.lock);
 INIT_LIST_HEAD(&file_priv->mm.request_list);

 idr_init(&file_priv->context_idr);

 return 0;
}
