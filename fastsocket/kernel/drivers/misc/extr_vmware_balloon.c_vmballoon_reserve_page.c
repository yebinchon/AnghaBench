
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refused_alloc; int sleep_alloc_fail; int alloc_fail; int sleep_alloc; int alloc; } ;
struct vmballoon {scalar_t__ n_refused_pages; int size; int pages; int refused_pages; scalar_t__ reset_required; TYPE_1__ stats; } ;
struct page {int lru; } ;
typedef int gfp_t ;


 int EIO ;
 int ENOMEM ;
 int STATS_INC (int ) ;
 scalar_t__ VMW_BALLOON_MAX_REFUSED ;
 int VMW_PAGE_ALLOC_CANSLEEP ;
 int VMW_PAGE_ALLOC_NOSLEEP ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 int list_add (int *,int *) ;
 int page_to_pfn (struct page*) ;
 int vmballoon_send_lock_page (struct vmballoon*,int ) ;

__attribute__((used)) static int vmballoon_reserve_page(struct vmballoon *b, bool can_sleep)
{
 struct page *page;
 gfp_t flags;
 bool locked = 0;

 do {
  if (!can_sleep)
   STATS_INC(b->stats.alloc);
  else
   STATS_INC(b->stats.sleep_alloc);

  flags = can_sleep ? VMW_PAGE_ALLOC_CANSLEEP : VMW_PAGE_ALLOC_NOSLEEP;
  page = alloc_page(flags);
  if (!page) {
   if (!can_sleep)
    STATS_INC(b->stats.alloc_fail);
   else
    STATS_INC(b->stats.sleep_alloc_fail);
   return -ENOMEM;
  }


  locked = vmballoon_send_lock_page(b, page_to_pfn(page));
  if (!locked) {
   STATS_INC(b->stats.refused_alloc);

   if (b->reset_required) {
    __free_page(page);
    return -EIO;
   }






   list_add(&page->lru, &b->refused_pages);
   if (++b->n_refused_pages >= VMW_BALLOON_MAX_REFUSED)
    return -EIO;
  }
 } while (!locked);


 list_add(&page->lru, &b->pages);


 b->size++;

 return 0;
}
