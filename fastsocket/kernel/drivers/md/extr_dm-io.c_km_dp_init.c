
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpages {unsigned long context_u; void* context_ptr; int next_page; int get_page; } ;


 int PAGE_SIZE ;
 int km_get_page ;
 int km_next_page ;

__attribute__((used)) static void km_dp_init(struct dpages *dp, void *data)
{
 dp->get_page = km_get_page;
 dp->next_page = km_next_page;
 dp->context_u = ((unsigned long) data) & (PAGE_SIZE - 1);
 dp->context_ptr = data;
}
