
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int consistent_sync (void*,size_t,int) ;
 void* page_address (struct page*) ;

void consistent_sync_page(struct page *page, unsigned long offset,
     size_t size, int direction)
{
 void *start;

 start = page_address(page) + offset;
 consistent_sync(start, size, direction);
}
