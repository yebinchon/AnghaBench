
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {scalar_t__ state; int * pages; TYPE_2__* bdev; } ;
struct ttm_mem_reg {int placement; } ;
struct ttm_buffer_object {struct ttm_tt* ttm; struct ttm_mem_reg mem; } ;
struct ttm_bo_kmap_obj {int virtual; int bo_kmap_type; int page; } ;
typedef int pgprot_t ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* ttm_tt_populate ) (struct ttm_tt*) ;} ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_KERNEL ;
 int TTM_PL_FLAG_CACHED ;
 int kmap (int ) ;
 int stub1 (struct ttm_tt*) ;
 scalar_t__ tt_unpopulated ;
 int ttm_bo_map_kmap ;
 int ttm_bo_map_vmap ;
 int ttm_io_prot (int,int ) ;
 int vmap (int *,unsigned long,int ,int ) ;

__attribute__((used)) static int ttm_bo_kmap_ttm(struct ttm_buffer_object *bo,
      unsigned long start_page,
      unsigned long num_pages,
      struct ttm_bo_kmap_obj *map)
{
 struct ttm_mem_reg *mem = &bo->mem; pgprot_t prot;
 struct ttm_tt *ttm = bo->ttm;
 int ret;

 BUG_ON(!ttm);

 if (ttm->state == tt_unpopulated) {
  ret = ttm->bdev->driver->ttm_tt_populate(ttm);
  if (ret)
   return ret;
 }

 if (num_pages == 1 && (mem->placement & TTM_PL_FLAG_CACHED)) {





  map->bo_kmap_type = ttm_bo_map_kmap;
  map->page = ttm->pages[start_page];
  map->virtual = kmap(map->page);
 } else {




  prot = (mem->placement & TTM_PL_FLAG_CACHED) ?
   PAGE_KERNEL :
   ttm_io_prot(mem->placement, PAGE_KERNEL);
  map->bo_kmap_type = ttm_bo_map_vmap;
  map->virtual = vmap(ttm->pages + start_page, num_pages,
        0, prot);
 }
 return (!map->virtual) ? -ENOMEM : 0;
}
