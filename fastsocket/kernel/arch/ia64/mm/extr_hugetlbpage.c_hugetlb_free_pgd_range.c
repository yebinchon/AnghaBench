
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 scalar_t__ REGION_NUMBER (unsigned long) ;
 scalar_t__ RGN_HPAGE ;
 int free_pgd_range (struct mmu_gather*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 unsigned long htlbpage_to_page (unsigned long) ;

void hugetlb_free_pgd_range(struct mmu_gather *tlb,
   unsigned long addr, unsigned long end,
   unsigned long floor, unsigned long ceiling)
{
 addr = htlbpage_to_page(addr);
 end = htlbpage_to_page(end);
 if (REGION_NUMBER(floor) == RGN_HPAGE)
  floor = htlbpage_to_page(floor);
 if (REGION_NUMBER(ceiling) == RGN_HPAGE)
  ceiling = htlbpage_to_page(ceiling);

 free_pgd_range(tlb, addr, end, floor, ceiling);
}
