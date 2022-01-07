
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int has_type; int use_type; TYPE_1__* func; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct TYPE_2__ {int (* takedown ) (struct ttm_mem_type_manager*) ;} ;


 int EINVAL ;
 unsigned int TTM_NUM_MEM_TYPES ;
 int pr_err (char*,unsigned int) ;
 int stub1 (struct ttm_mem_type_manager*) ;
 int ttm_bo_force_list_clean (struct ttm_bo_device*,unsigned int,int) ;

int ttm_bo_clean_mm(struct ttm_bo_device *bdev, unsigned mem_type)
{
 struct ttm_mem_type_manager *man;
 int ret = -EINVAL;

 if (mem_type >= TTM_NUM_MEM_TYPES) {
  pr_err("Illegal memory type %d\n", mem_type);
  return ret;
 }
 man = &bdev->man[mem_type];

 if (!man->has_type) {
  pr_err("Trying to take down uninitialized memory manager type %u\n",
         mem_type);
  return ret;
 }

 man->use_type = 0;
 man->has_type = 0;

 ret = 0;
 if (mem_type > 0) {
  ttm_bo_force_list_clean(bdev, mem_type, 0);

  ret = (*man->func->takedown)(man);
 }

 return ret;
}
