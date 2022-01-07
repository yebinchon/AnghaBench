
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slice_mask {int dummy; } ;
struct TYPE_2__ {unsigned int user_psize; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned int MMU_PAGE_4K ;
 unsigned int MMU_PAGE_64K ;
 int or_mask (struct slice_mask,struct slice_mask) ;
 int slice_check_fit (struct slice_mask,struct slice_mask) ;
 int slice_dbg (char*,struct mm_struct*,unsigned long,unsigned long) ;
 struct slice_mask slice_mask_for_size (struct mm_struct*,unsigned int) ;
 int slice_print_mask (char*,struct slice_mask) ;
 struct slice_mask slice_range_to_mask (unsigned long,unsigned long) ;

int is_hugepage_only_range(struct mm_struct *mm, unsigned long addr,
      unsigned long len)
{
 struct slice_mask mask, available;
 unsigned int psize = mm->context.user_psize;

 mask = slice_range_to_mask(addr, len);
 available = slice_mask_for_size(mm, psize);
 return !slice_check_fit(mask, available);
}
