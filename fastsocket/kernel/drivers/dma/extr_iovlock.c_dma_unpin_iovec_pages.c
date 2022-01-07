
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pinned_list {int nr_iovecs; struct dma_page_list* page_list; } ;
struct dma_page_list {int nr_pages; int * pages; } ;


 int kfree (struct dma_pinned_list*) ;
 int page_cache_release (int ) ;
 int set_page_dirty_lock (int ) ;

void dma_unpin_iovec_pages(struct dma_pinned_list *pinned_list)
{
 int i, j;

 if (!pinned_list)
  return;

 for (i = 0; i < pinned_list->nr_iovecs; i++) {
  struct dma_page_list *page_list = &pinned_list->page_list[i];
  for (j = 0; j < page_list->nr_pages; j++) {
   set_page_dirty_lock(page_list->pages[j]);
   page_cache_release(page_list->pages[j]);
  }
 }

 kfree(pinned_list);
}
