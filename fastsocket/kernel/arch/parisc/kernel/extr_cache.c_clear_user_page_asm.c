
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int purge_tlb_end (unsigned long) ;
 int purge_tlb_start (unsigned long) ;

void clear_user_page_asm(void *page, unsigned long vaddr)
{
 unsigned long flags;

 extern void __clear_user_page_asm(void *page, unsigned long vaddr);

 purge_tlb_start(flags);
 __clear_user_page_asm(page, vaddr);
 purge_tlb_end(flags);
}
