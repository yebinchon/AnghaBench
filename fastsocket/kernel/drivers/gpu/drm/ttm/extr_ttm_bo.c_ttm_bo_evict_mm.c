
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int has_type; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;


 int EINVAL ;
 unsigned int TTM_NUM_MEM_TYPES ;
 int pr_err (char*,unsigned int) ;
 int ttm_bo_force_list_clean (struct ttm_bo_device*,unsigned int,int) ;

int ttm_bo_evict_mm(struct ttm_bo_device *bdev, unsigned mem_type)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];

 if (mem_type == 0 || mem_type >= TTM_NUM_MEM_TYPES) {
  pr_err("Illegal memory manager memory type %u\n", mem_type);
  return -EINVAL;
 }

 if (!man->has_type) {
  pr_err("Memory type %u has not been initialized\n", mem_type);
  return 0;
 }

 return ttm_bo_force_list_clean(bdev, mem_type, 1);
}
