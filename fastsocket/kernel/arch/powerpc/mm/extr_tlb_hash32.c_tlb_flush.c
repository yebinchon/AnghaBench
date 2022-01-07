
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmu_gather {int dummy; } ;


 scalar_t__ Hash ;
 int _tlbia () ;
 int pte_free_finish () ;

void tlb_flush(struct mmu_gather *tlb)
{
 if (Hash == 0) {




  _tlbia();
 }


 pte_free_finish();
}
