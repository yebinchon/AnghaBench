
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int num_pages; int pages; } ;


 int drm_calloc_large (int ,int) ;

__attribute__((used)) static void ttm_tt_alloc_page_directory(struct ttm_tt *ttm)
{
 ttm->pages = drm_calloc_large(ttm->num_pages, sizeof(void*));
}
