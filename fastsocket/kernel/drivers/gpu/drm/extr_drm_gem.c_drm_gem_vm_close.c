
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_object {struct drm_device* dev; } ;
struct drm_device {int struct_mutex; } ;


 int drm_gem_object_unreference (struct drm_gem_object*) ;
 int drm_vm_close_locked (struct drm_device*,struct vm_area_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_gem_vm_close(struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = vma->vm_private_data;
 struct drm_device *dev = obj->dev;

 mutex_lock(&dev->struct_mutex);
 drm_vm_close_locked(obj->dev, vma);
 drm_gem_object_unreference(obj);
 mutex_unlock(&dev->struct_mutex);
}
