
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int io_reserve_lru; scalar_t__ use_io_reserve_lru; } ;
struct TYPE_3__ {int io_reserved_vm; } ;
struct ttm_mem_reg {size_t mem_type; TYPE_1__ bus; } ;
struct ttm_buffer_object {int io_reserve_lru; TYPE_2__* bdev; struct ttm_mem_reg mem; } ;
struct TYPE_4__ {struct ttm_mem_type_manager* man; } ;


 int list_add_tail (int *,int *) ;
 int ttm_mem_io_reserve (TYPE_2__*,struct ttm_mem_reg*) ;
 scalar_t__ unlikely (int) ;

int ttm_mem_io_reserve_vm(struct ttm_buffer_object *bo)
{
 struct ttm_mem_reg *mem = &bo->mem;
 int ret;

 if (!mem->bus.io_reserved_vm) {
  struct ttm_mem_type_manager *man =
   &bo->bdev->man[mem->mem_type];

  ret = ttm_mem_io_reserve(bo->bdev, mem);
  if (unlikely(ret != 0))
   return ret;
  mem->bus.io_reserved_vm = 1;
  if (man->use_io_reserve_lru)
   list_add_tail(&bo->io_reserve_lru,
          &man->io_reserve_lru);
 }
 return 0;
}
