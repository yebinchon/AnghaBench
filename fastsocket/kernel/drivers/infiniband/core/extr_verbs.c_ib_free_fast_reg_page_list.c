
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_fast_reg_page_list {TYPE_1__* device; } ;
struct TYPE_2__ {int (* free_fast_reg_page_list ) (struct ib_fast_reg_page_list*) ;} ;


 int stub1 (struct ib_fast_reg_page_list*) ;

void ib_free_fast_reg_page_list(struct ib_fast_reg_page_list *page_list)
{
 page_list->device->free_fast_reg_page_list(page_list);
}
