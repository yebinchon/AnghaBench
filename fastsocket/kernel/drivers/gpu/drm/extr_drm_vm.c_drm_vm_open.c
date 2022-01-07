
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_file; } ;
struct drm_file {TYPE_2__* minor; } ;
struct drm_device {int struct_mutex; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {struct drm_file* private_data; } ;


 int drm_vm_open_locked (struct drm_device*,struct vm_area_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_vm_open(struct vm_area_struct *vma)
{
 struct drm_file *priv = vma->vm_file->private_data;
 struct drm_device *dev = priv->minor->dev;

 mutex_lock(&dev->struct_mutex);
 drm_vm_open_locked(dev, vma);
 mutex_unlock(&dev->struct_mutex);
}
