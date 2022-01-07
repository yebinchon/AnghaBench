
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_i915_gem_phys_object {int id; TYPE_3__* handle; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {struct drm_i915_gem_phys_object** phys_objs; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int size; scalar_t__ vaddr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 TYPE_3__* drm_pci_alloc (struct drm_device*,int,int) ;
 int kfree (struct drm_i915_gem_phys_object*) ;
 struct drm_i915_gem_phys_object* kzalloc (int,int ) ;
 int set_memory_wc (unsigned long,int) ;

__attribute__((used)) static int i915_gem_init_phys_object(struct drm_device *dev,
         int id, int size, int align)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_gem_phys_object *phys_obj;
 int ret;

 if (dev_priv->mm.phys_objs[id - 1] || !size)
  return 0;

 phys_obj = kzalloc(sizeof(struct drm_i915_gem_phys_object), GFP_KERNEL);
 if (!phys_obj)
  return -ENOMEM;

 phys_obj->id = id;

 phys_obj->handle = drm_pci_alloc(dev, size, align);
 if (!phys_obj->handle) {
  ret = -ENOMEM;
  goto kfree_obj;
 }




 dev_priv->mm.phys_objs[id - 1] = phys_obj;

 return 0;
kfree_obj:
 kfree(phys_obj);
 return ret;
}
