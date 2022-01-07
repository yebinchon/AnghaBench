
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int dummy; } ;
typedef int pte_t ;
typedef int hugepd_t ;


 int PTRS_PER_HUGEPTE (int) ;
 unsigned int huge_page_shift (struct hstate*) ;
 int * hugepd_page (int ) ;
 int shift_to_mmu_psize (unsigned int) ;

__attribute__((used)) static inline pte_t *hugepte_offset(hugepd_t *hpdp, unsigned long addr,
        struct hstate *hstate)
{
 unsigned int shift = huge_page_shift(hstate);
 int psize = shift_to_mmu_psize(shift);
 unsigned long idx = ((addr >> shift) & (PTRS_PER_HUGEPTE(psize)-1));
 pte_t *dir = hugepd_page(*hpdp);

 return dir + idx;
}
