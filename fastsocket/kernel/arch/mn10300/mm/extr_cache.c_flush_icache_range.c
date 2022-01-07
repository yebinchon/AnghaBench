
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
struct TYPE_2__ {int mm; } ;


 int PAGE_SIZE ;
 TYPE_1__* current ;
 int mn10300_dcache_flush_range2 (unsigned long,unsigned long) ;
 int mn10300_icache_inv () ;
 unsigned long page_to_phys (struct page*) ;
 int * pgd_offset (int ,unsigned long) ;
 int pgd_val (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_val (int ) ;
 scalar_t__ pte_none (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 struct page* pte_page (int ) ;
 int pte_unmap (int *) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_val (int ) ;

void flush_icache_range(unsigned long start, unsigned long end)
{
 mn10300_icache_inv();
}
