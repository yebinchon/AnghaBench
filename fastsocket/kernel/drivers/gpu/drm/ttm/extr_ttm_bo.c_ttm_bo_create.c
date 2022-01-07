
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;
struct ttm_bo_device {int dummy; } ;
struct file {int dummy; } ;
typedef enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ttm_buffer_object* kzalloc (int,int ) ;
 scalar_t__ likely (int) ;
 size_t ttm_bo_acc_size (struct ttm_bo_device*,unsigned long,int) ;
 int ttm_bo_init (struct ttm_bo_device*,struct ttm_buffer_object*,unsigned long,int,struct ttm_placement*,int ,int,struct file*,size_t,int *,int *) ;
 scalar_t__ unlikely (int ) ;

int ttm_bo_create(struct ttm_bo_device *bdev,
   unsigned long size,
   enum ttm_bo_type type,
   struct ttm_placement *placement,
   uint32_t page_alignment,
   bool interruptible,
   struct file *persistent_swap_storage,
   struct ttm_buffer_object **p_bo)
{
 struct ttm_buffer_object *bo;
 size_t acc_size;
 int ret;

 bo = kzalloc(sizeof(*bo), GFP_KERNEL);
 if (unlikely(bo == ((void*)0)))
  return -ENOMEM;

 acc_size = ttm_bo_acc_size(bdev, size, sizeof(struct ttm_buffer_object));
 ret = ttm_bo_init(bdev, bo, size, type, placement, page_alignment,
     interruptible, persistent_swap_storage, acc_size,
     ((void*)0), ((void*)0));
 if (likely(ret == 0))
  *p_bo = bo;

 return ret;
}
