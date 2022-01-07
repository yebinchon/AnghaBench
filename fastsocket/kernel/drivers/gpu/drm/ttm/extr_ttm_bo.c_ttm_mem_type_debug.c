
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {TYPE_1__* func; int default_caching; int available_caching; int size; int gpu_offset; int flags; int use_type; int has_type; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct TYPE_2__ {int (* debug ) (struct ttm_mem_type_manager*,int ) ;} ;


 int TTM_PFX ;
 int TTM_PL_SYSTEM ;
 int pr_err (char*,int ) ;
 int stub1 (struct ttm_mem_type_manager*,int ) ;

__attribute__((used)) static void ttm_mem_type_debug(struct ttm_bo_device *bdev, int mem_type)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];

 pr_err("    has_type: %d\n", man->has_type);
 pr_err("    use_type: %d\n", man->use_type);
 pr_err("    flags: 0x%08X\n", man->flags);
 pr_err("    gpu_offset: 0x%08lX\n", man->gpu_offset);
 pr_err("    size: %llu\n", man->size);
 pr_err("    available_caching: 0x%08X\n", man->available_caching);
 pr_err("    default_caching: 0x%08X\n", man->default_caching);
 if (mem_type != TTM_PL_SYSTEM)
  (*man->func->debug)(man, TTM_PFX);
}
