
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;
struct ttm_dma_tt {int * dma_address; struct ttm_tt ttm; } ;


 int drm_free_large (int *) ;

void ttm_dma_tt_fini(struct ttm_dma_tt *ttm_dma)
{
 struct ttm_tt *ttm = &ttm_dma->ttm;

 drm_free_large(ttm->pages);
 ttm->pages = ((void*)0);
 drm_free_large(ttm_dma->dma_address);
 ttm_dma->dma_address = ((void*)0);
}
