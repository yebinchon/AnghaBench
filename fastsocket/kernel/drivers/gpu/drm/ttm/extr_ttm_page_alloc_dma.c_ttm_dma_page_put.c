
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pool {int type; int dev_name; } ;
struct dma_page {int page_list; int p; } ;


 int IS_CACHED ;
 int __ttm_dma_free_page (struct dma_pool*,struct dma_page*) ;
 int list_del (int *) ;
 int pr_err (char*,int ,int) ;
 scalar_t__ set_pages_array_wb (int *,int) ;

__attribute__((used)) static void ttm_dma_page_put(struct dma_pool *pool, struct dma_page *d_page)
{

 if (!(pool->type & IS_CACHED) && set_pages_array_wb(&d_page->p, 1))
  pr_err("%s: Failed to set %d pages to wb!\n",
         pool->dev_name, 1);

 list_del(&d_page->page_list);
 __ttm_dma_free_page(pool, d_page);
}
