
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {int page; } ;


 int __free_page (int ) ;
 int kfree (struct page_list*) ;

__attribute__((used)) static void free_pl(struct page_list *pl)
{
 __free_page(pl->page);
 kfree(pl);
}
