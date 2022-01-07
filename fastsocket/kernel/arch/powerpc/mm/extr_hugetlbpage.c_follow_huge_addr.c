
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int EINVAL ;
 struct page* ERR_PTR (int ) ;
 unsigned long PAGE_SIZE ;
 unsigned int get_slice_psize (struct mm_struct*,unsigned long) ;
 int * huge_pte_offset (struct mm_struct*,unsigned long) ;
 int * mmu_huge_psizes ;
 unsigned int mmu_psize_to_shift (unsigned int) ;
 struct page* pte_page (int ) ;

struct page *
follow_huge_addr(struct mm_struct *mm, unsigned long address, int write)
{
 pte_t *ptep;
 struct page *page;
 unsigned int mmu_psize = get_slice_psize(mm, address);


 if (!mmu_huge_psizes[mmu_psize])
  return ERR_PTR(-EINVAL);

 ptep = huge_pte_offset(mm, address);
 page = pte_page(*ptep);
 if (page) {
  unsigned int shift = mmu_psize_to_shift(mmu_psize);
  unsigned long sz = ((1UL) << shift);
  page += (address % sz) / PAGE_SIZE;
 }

 return page;
}
