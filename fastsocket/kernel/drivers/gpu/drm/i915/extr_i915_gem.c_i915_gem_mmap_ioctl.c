
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct drm_i915_gem_mmap {scalar_t__ addr_ptr; int offset; int size; int handle; } ;
struct drm_gem_object {int filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (void*) ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 TYPE_2__* current ;
 unsigned long do_mmap (int ,int ,int ,int,int ,int ) ;
 int down_write (int *) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 int up_write (int *) ;

int
i915_gem_mmap_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_gem_mmap *args = data;
 struct drm_gem_object *obj;
 unsigned long addr;

 obj = drm_gem_object_lookup(dev, file, args->handle);
 if (obj == ((void*)0))
  return -ENOENT;




 if (!obj->filp) {
  drm_gem_object_unreference_unlocked(obj);
  return -EINVAL;
 }

 down_write(&current->mm->mmap_sem);
 addr = do_mmap(obj->filp, 0, args->size,
         PROT_READ | PROT_WRITE, MAP_SHARED,
         args->offset);
 up_write(&current->mm->mmap_sem);
 drm_gem_object_unreference_unlocked(obj);
 if (IS_ERR((void *)addr))
  return addr;

 args->addr_ptr = (uint64_t) addr;

 return 0;
}
