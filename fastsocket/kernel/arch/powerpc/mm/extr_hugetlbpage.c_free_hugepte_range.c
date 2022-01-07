
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct mmu_gather {int need_flush; } ;
typedef int pte_t ;
struct TYPE_4__ {scalar_t__ pd; } ;
typedef TYPE_1__ hugepd_t ;


 scalar_t__ HUGEPTE_CACHE_NUM ;
 int PGF_CACHENUM_MASK ;
 int * hugepd_page (TYPE_1__) ;
 int pgtable_free_cache (int *,scalar_t__,int ) ;
 int pgtable_free_tlb (struct mmu_gather*,int ) ;

__attribute__((used)) static void free_hugepte_range(struct mmu_gather *tlb, hugepd_t *hpdp,
          unsigned int psize)
{
 pte_t *hugepte = hugepd_page(*hpdp);

 hpdp->pd = 0;
 tlb->need_flush = 1;
 pgtable_free_tlb(tlb, pgtable_free_cache(hugepte,
       HUGEPTE_CACHE_NUM+psize-1,
       PGF_CACHENUM_MASK));
}
