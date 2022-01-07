
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hstate {int dummy; } ;
struct file {int dummy; } ;


 unsigned long EINVAL ;
 struct hstate* hstate_file (struct file*) ;
 int huge_page_shift (struct hstate*) ;
 int * mmu_huge_psizes ;
 int shift_to_mmu_psize (int ) ;
 unsigned long slice_get_unmapped_area (unsigned long,unsigned long,unsigned long,int,int,int ) ;

unsigned long hugetlb_get_unmapped_area(struct file *file, unsigned long addr,
     unsigned long len, unsigned long pgoff,
     unsigned long flags)
{
 struct hstate *hstate = hstate_file(file);
 int mmu_psize = shift_to_mmu_psize(huge_page_shift(hstate));

 if (!mmu_huge_psizes[mmu_psize])
  return -EINVAL;
 return slice_get_unmapped_area(addr, len, flags, mmu_psize, 1, 0);
}
