
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {unsigned long num_pages; int pages; int * swap_storage; int state; struct page* dummy_read_page; int page_flags; int caching_state; int glob; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int glob; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int pr_err (char*) ;
 int tt_cached ;
 int tt_unpopulated ;
 int ttm_tt_alloc_page_directory (struct ttm_tt*) ;
 int ttm_tt_destroy (struct ttm_tt*) ;

int ttm_tt_init(struct ttm_tt *ttm, struct ttm_bo_device *bdev,
  unsigned long size, uint32_t page_flags,
  struct page *dummy_read_page)
{
 ttm->bdev = bdev;
 ttm->glob = bdev->glob;
 ttm->num_pages = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
 ttm->caching_state = tt_cached;
 ttm->page_flags = page_flags;
 ttm->dummy_read_page = dummy_read_page;
 ttm->state = tt_unpopulated;
 ttm->swap_storage = ((void*)0);

 ttm_tt_alloc_page_directory(ttm);
 if (!ttm->pages) {
  ttm_tt_destroy(ttm);
  pr_err("Failed allocating page table\n");
  return -ENOMEM;
 }
 return 0;
}
