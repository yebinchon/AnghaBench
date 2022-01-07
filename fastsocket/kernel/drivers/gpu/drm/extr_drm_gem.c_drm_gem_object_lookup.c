
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int table_lock; int object_idr; } ;
struct drm_device {int dummy; } ;


 int drm_gem_object_reference (struct drm_gem_object*) ;
 struct drm_gem_object* idr_find (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct drm_gem_object *
drm_gem_object_lookup(struct drm_device *dev, struct drm_file *filp,
        u32 handle)
{
 struct drm_gem_object *obj;

 spin_lock(&filp->table_lock);


 obj = idr_find(&filp->object_idr, handle);
 if (obj == ((void*)0)) {
  spin_unlock(&filp->table_lock);
  return ((void*)0);
 }

 drm_gem_object_reference(obj);

 spin_unlock(&filp->table_lock);

 return obj;
}
