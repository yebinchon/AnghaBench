
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_fast_reg_page_list {int dummy; } ;


 int kfree (struct ib_fast_reg_page_list*) ;

__attribute__((used)) static void iwch_free_fastreg_pbl(struct ib_fast_reg_page_list *page_list)
{
 kfree(page_list);
}
