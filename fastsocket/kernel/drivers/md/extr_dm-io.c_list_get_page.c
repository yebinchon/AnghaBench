
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page* page; } ;
struct page {int dummy; } ;
struct dpages {unsigned int context_u; scalar_t__ context_ptr; } ;


 unsigned int PAGE_SIZE ;

__attribute__((used)) static void list_get_page(struct dpages *dp,
    struct page **p, unsigned long *len, unsigned *offset)
{
 unsigned o = dp->context_u;
 struct page_list *pl = (struct page_list *) dp->context_ptr;

 *p = pl->page;
 *len = PAGE_SIZE - o;
 *offset = o;
}
