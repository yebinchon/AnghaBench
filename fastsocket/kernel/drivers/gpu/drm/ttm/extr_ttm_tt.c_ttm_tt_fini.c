
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;


 int drm_free_large (int *) ;

void ttm_tt_fini(struct ttm_tt *ttm)
{
 drm_free_large(ttm->pages);
 ttm->pages = ((void*)0);
}
