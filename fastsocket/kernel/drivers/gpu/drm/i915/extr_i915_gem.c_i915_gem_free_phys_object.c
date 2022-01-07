
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_gem_phys_object {TYPE_3__* handle; scalar_t__ cur_obj; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {struct drm_i915_gem_phys_object** phys_objs; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int size; scalar_t__ vaddr; } ;


 int PAGE_SIZE ;
 int drm_pci_free (struct drm_device*,TYPE_3__*) ;
 int i915_gem_detach_phys_object (struct drm_device*,scalar_t__) ;
 int kfree (struct drm_i915_gem_phys_object*) ;
 int set_memory_wb (unsigned long,int) ;

__attribute__((used)) static void i915_gem_free_phys_object(struct drm_device *dev, int id)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_gem_phys_object *phys_obj;

 if (!dev_priv->mm.phys_objs[id - 1])
  return;

 phys_obj = dev_priv->mm.phys_objs[id - 1];
 if (phys_obj->cur_obj) {
  i915_gem_detach_phys_object(dev, phys_obj->cur_obj);
 }




 drm_pci_free(dev, phys_obj->handle);
 kfree(phys_obj);
 dev_priv->mm.phys_objs[id - 1] = ((void*)0);
}
