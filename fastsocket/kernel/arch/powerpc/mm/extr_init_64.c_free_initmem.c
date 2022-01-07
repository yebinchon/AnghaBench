
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ClearPageReserved (int ) ;
 scalar_t__ PAGE_SIZE ;
 int POISON_FREE_INITMEM ;
 scalar_t__ __init_begin ;
 scalar_t__ __init_end ;
 int free_page (unsigned long) ;
 int init_page_count (int ) ;
 int memset (void*,int ,scalar_t__) ;
 int printk (char*,unsigned long) ;
 int totalram_pages ;
 int virt_to_page (unsigned long) ;

void free_initmem(void)
{
 unsigned long addr;

 addr = (unsigned long)__init_begin;
 for (; addr < (unsigned long)__init_end; addr += PAGE_SIZE) {
  memset((void *)addr, POISON_FREE_INITMEM, PAGE_SIZE);
  ClearPageReserved(virt_to_page(addr));
  init_page_count(virt_to_page(addr));
  free_page(addr);
  totalram_pages++;
 }
 printk ("Freeing unused kernel memory: %luk freed\n",
  ((unsigned long)__init_end - (unsigned long)__init_begin) >> 10);
}
