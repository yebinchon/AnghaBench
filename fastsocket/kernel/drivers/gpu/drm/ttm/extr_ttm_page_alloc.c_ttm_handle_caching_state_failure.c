
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int __free_page (struct page*) ;
 int list_del (int *) ;

__attribute__((used)) static void ttm_handle_caching_state_failure(struct list_head *pages,
  int ttm_flags, enum ttm_caching_state cstate,
  struct page **failed_pages, unsigned cpages)
{
 unsigned i;

 for (i = 0; i < cpages; ++i) {
  list_del(&failed_pages[i]->lru);
  __free_page(failed_pages[i]);
 }
}
