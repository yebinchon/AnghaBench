
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_object {size_t size; int handle_count; int refcount; int * filp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;

int drm_gem_private_object_init(struct drm_device *dev,
   struct drm_gem_object *obj, size_t size)
{
 BUG_ON((size & (PAGE_SIZE - 1)) != 0);

 obj->dev = dev;
 obj->filp = ((void*)0);

 kref_init(&obj->refcount);
 atomic_set(&obj->handle_count, 0);
 obj->size = size;

 return 0;
}
