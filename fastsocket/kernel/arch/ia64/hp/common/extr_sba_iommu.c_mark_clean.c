
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; } ;


 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long PAGE_SIZE ;
 int PG_arch_1 ;
 int set_bit (int ,int *) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void
mark_clean (void *addr, size_t size)
{
 unsigned long pg_addr, end;

 pg_addr = PAGE_ALIGN((unsigned long) addr);
 end = (unsigned long) addr + size;
 while (pg_addr + PAGE_SIZE <= end) {
  struct page *page = virt_to_page((void *)pg_addr);
  set_bit(PG_arch_1, &page->flags);
  pg_addr += PAGE_SIZE;
 }
}
