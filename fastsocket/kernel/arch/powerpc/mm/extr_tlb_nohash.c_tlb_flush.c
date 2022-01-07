
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int mm; } ;


 int flush_tlb_mm (int ) ;
 int pte_free_finish () ;

void tlb_flush(struct mmu_gather *tlb)
{
 flush_tlb_mm(tlb->mm);


 pte_free_finish();
}
