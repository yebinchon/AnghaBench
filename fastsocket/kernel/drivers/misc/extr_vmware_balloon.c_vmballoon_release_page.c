
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free; } ;
struct vmballoon {int size; TYPE_1__ stats; } ;
struct page {int lru; } ;


 int EIO ;
 int STATS_INC (int ) ;
 int __free_page (struct page*) ;
 int list_del (int *) ;
 int page_to_pfn (struct page*) ;
 int vmballoon_send_unlock_page (struct vmballoon*,int ) ;

__attribute__((used)) static int vmballoon_release_page(struct vmballoon *b, struct page *page)
{
 if (!vmballoon_send_unlock_page(b, page_to_pfn(page)))
  return -EIO;

 list_del(&page->lru);


 __free_page(page);
 STATS_INC(b->stats.free);


 b->size--;

 return 0;
}
