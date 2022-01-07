
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int * filp; } ;
struct drm_i915_gem_object {int madv; TYPE_1__ base; } ;
typedef int loff_t ;


 int __I915_MADV_PURGED ;
 struct inode* file_inode (int *) ;
 int i915_gem_object_free_mmap_offset (struct drm_i915_gem_object*) ;
 int shmem_truncate_range (struct inode*,int ,int ) ;

__attribute__((used)) static void
i915_gem_object_truncate(struct drm_i915_gem_object *obj)
{
 struct inode *inode;

 i915_gem_object_free_mmap_offset(obj);

 if (obj->base.filp == ((void*)0))
  return;






 inode = file_inode(obj->base.filp);
 shmem_truncate_range(inode, 0, (loff_t)-1);

 obj->madv = __I915_MADV_PURGED;
}
