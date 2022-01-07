
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pteval_t ;


 unsigned long INVALID_P2M_ENTRY ;
 int PAGE_SHIFT ;
 int PTE_FLAGS_MASK ;
 int PTE_PFN_MASK ;
 int _PAGE_PRESENT ;
 unsigned long pfn_to_mfn (unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static pteval_t pte_pfn_to_mfn(pteval_t val)
{
 if (val & _PAGE_PRESENT) {
  unsigned long pfn = (val & PTE_PFN_MASK) >> PAGE_SHIFT;
  pteval_t flags = val & PTE_FLAGS_MASK;
  unsigned long mfn = pfn_to_mfn(pfn);







  if (unlikely(mfn == INVALID_P2M_ENTRY)) {
   mfn = 0;
   flags = 0;
  }

  val = ((pteval_t)mfn << PAGE_SHIFT) | flags;
 }

 return val;
}
