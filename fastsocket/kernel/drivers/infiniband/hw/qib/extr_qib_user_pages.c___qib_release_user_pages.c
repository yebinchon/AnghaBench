
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_page (struct page*) ;
 int set_page_dirty_lock (struct page*) ;

__attribute__((used)) static void __qib_release_user_pages(struct page **p, size_t num_pages,
         int dirty)
{
 size_t i;

 for (i = 0; i < num_pages; i++) {
  if (dirty)
   set_page_dirty_lock(p[i]);
  put_page(p[i]);
 }
}
