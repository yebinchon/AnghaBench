
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int dummy; } ;
struct dpages {unsigned int context_u; struct page_list* context_ptr; int next_page; int get_page; } ;


 int list_get_page ;
 int list_next_page ;

__attribute__((used)) static void list_dp_init(struct dpages *dp, struct page_list *pl, unsigned offset)
{
 dp->get_page = list_get_page;
 dp->next_page = list_next_page;
 dp->context_u = offset;
 dp->context_ptr = pl;
}
