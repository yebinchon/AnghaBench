
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int has_type; int io_reserve_fastpath; int use_io_reserve_lru; int use_type; unsigned long size; int lru; TYPE_2__* func; struct ttm_bo_device* bdev; int io_reserve_lru; int io_reserve_mutex; } ;
struct ttm_bo_device {TYPE_1__* driver; struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int (* init ) (struct ttm_mem_type_manager*,unsigned long) ;} ;
struct TYPE_3__ {int (* init_mem_type ) (struct ttm_bo_device*,unsigned int,struct ttm_mem_type_manager*) ;} ;


 int BUG_ON (int) ;
 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int TTM_NUM_MEM_TYPES ;
 unsigned int TTM_PL_SYSTEM ;
 int mutex_init (int *) ;
 int stub1 (struct ttm_bo_device*,unsigned int,struct ttm_mem_type_manager*) ;
 int stub2 (struct ttm_mem_type_manager*,unsigned long) ;

int ttm_bo_init_mm(struct ttm_bo_device *bdev, unsigned type,
   unsigned long p_size)
{
 int ret = -EINVAL;
 struct ttm_mem_type_manager *man;

 BUG_ON(type >= TTM_NUM_MEM_TYPES);
 man = &bdev->man[type];
 BUG_ON(man->has_type);
 man->io_reserve_fastpath = 1;
 man->use_io_reserve_lru = 0;
 mutex_init(&man->io_reserve_mutex);
 INIT_LIST_HEAD(&man->io_reserve_lru);

 ret = bdev->driver->init_mem_type(bdev, type, man);
 if (ret)
  return ret;
 man->bdev = bdev;

 ret = 0;
 if (type != TTM_PL_SYSTEM) {
  ret = (*man->func->init)(man, p_size);
  if (ret)
   return ret;
 }
 man->has_type = 1;
 man->use_type = 1;
 man->size = p_size;

 INIT_LIST_HEAD(&man->lru);

 return 0;
}
