
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {size_t size; int handle_count; int refcount; int filp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int VM_NORESERVE ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;
 int shmem_file_setup (char*,size_t,int ) ;

int drm_gem_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size)
{
 BUG_ON((size & (PAGE_SIZE - 1)) != 0);

 obj->dev = dev;
 obj->filp = shmem_file_setup("drm mm object", size, VM_NORESERVE);
 if (IS_ERR(obj->filp))
  return PTR_ERR(obj->filp);

 kref_init(&obj->refcount);
 atomic_set(&obj->handle_count, 0);
 obj->size = size;

 return 0;
}
