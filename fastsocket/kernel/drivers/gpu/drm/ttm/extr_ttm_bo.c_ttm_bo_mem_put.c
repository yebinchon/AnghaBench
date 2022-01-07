
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {TYPE_2__* func; } ;
struct ttm_mem_reg {size_t mem_type; scalar_t__ mm_node; } ;
struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct TYPE_4__ {int (* put_node ) (struct ttm_mem_type_manager*,struct ttm_mem_reg*) ;} ;
struct TYPE_3__ {struct ttm_mem_type_manager* man; } ;


 int stub1 (struct ttm_mem_type_manager*,struct ttm_mem_reg*) ;

void ttm_bo_mem_put(struct ttm_buffer_object *bo, struct ttm_mem_reg *mem)
{
 struct ttm_mem_type_manager *man = &bo->bdev->man[mem->mem_type];

 if (mem->mm_node)
  (*man->func->put_node)(man, mem);
}
