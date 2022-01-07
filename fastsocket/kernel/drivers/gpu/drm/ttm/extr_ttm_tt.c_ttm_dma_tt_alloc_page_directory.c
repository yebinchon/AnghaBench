
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_pages; void* pages; } ;
struct ttm_dma_tt {TYPE_1__ ttm; void* dma_address; } ;


 void* drm_calloc_large (int ,int) ;

__attribute__((used)) static void ttm_dma_tt_alloc_page_directory(struct ttm_dma_tt *ttm)
{
 ttm->ttm.pages = drm_calloc_large(ttm->ttm.num_pages, sizeof(void*));
 ttm->dma_address = drm_calloc_large(ttm->ttm.num_pages,
         sizeof(*ttm->dma_address));
}
