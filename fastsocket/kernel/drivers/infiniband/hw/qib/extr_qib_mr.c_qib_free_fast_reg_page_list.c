
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_fast_reg_page_list {struct ib_fast_reg_page_list* page_list; } ;


 int kfree (struct ib_fast_reg_page_list*) ;

void qib_free_fast_reg_page_list(struct ib_fast_reg_page_list *pl)
{
 kfree(pl->page_list);
 kfree(pl);
}
