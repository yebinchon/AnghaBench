
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_placement {int num_placement; int * placement; } ;
struct TYPE_2__ {int size; int num_pages; } ;
struct ttm_buffer_object {int bdev; TYPE_1__ mem; } ;


 int pr_err (char*,...) ;
 int ttm_mem_type_debug (int ,int) ;
 int ttm_mem_type_from_flags (int ,int*) ;

__attribute__((used)) static void ttm_bo_mem_space_debug(struct ttm_buffer_object *bo,
     struct ttm_placement *placement)
{
 int i, ret, mem_type;

 pr_err("No space for %p (%lu pages, %luK, %luM)\n",
        bo, bo->mem.num_pages, bo->mem.size >> 10,
        bo->mem.size >> 20);
 for (i = 0; i < placement->num_placement; i++) {
  ret = ttm_mem_type_from_flags(placement->placement[i],
      &mem_type);
  if (ret)
   return;
  pr_err("  placement[%d]=0x%08X (%d)\n",
         i, placement->placement[i], mem_type);
  ttm_mem_type_debug(bo->bdev, mem_type);
 }
}
