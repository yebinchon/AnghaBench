
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct drm_gem_object {TYPE_1__* dev; } ;
struct TYPE_2__ {int struct_mutex; } ;


 int drm_gem_object_reference (struct drm_gem_object*) ;
 int drm_vm_open_locked (TYPE_1__*,struct vm_area_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_gem_vm_open(struct vm_area_struct *vma)
{
 struct drm_gem_object *obj = vma->vm_private_data;

 drm_gem_object_reference(obj);

 mutex_lock(&obj->dev->struct_mutex);
 drm_vm_open_locked(obj->dev, vma);
 mutex_unlock(&obj->dev->struct_mutex);
}
