
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {unsigned int low_slices; unsigned int high_slices; int member_1; int member_0; } ;
struct mm_struct {scalar_t__ task_size; } ;


 scalar_t__ SLICE_LOW_TOP ;
 unsigned long SLICE_NUM_HIGH ;
 unsigned long SLICE_NUM_LOW ;
 int slice_high_has_vma (struct mm_struct*,unsigned long) ;
 int slice_low_has_vma (struct mm_struct*,unsigned long) ;

__attribute__((used)) static struct slice_mask slice_mask_for_free(struct mm_struct *mm)
{
 struct slice_mask ret = { 0, 0 };
 unsigned long i;

 for (i = 0; i < SLICE_NUM_LOW; i++)
  if (!slice_low_has_vma(mm, i))
   ret.low_slices |= 1u << i;

 if (mm->task_size <= SLICE_LOW_TOP)
  return ret;

 for (i = 0; i < SLICE_NUM_HIGH; i++)
  if (!slice_high_has_vma(mm, i))
   ret.high_slices |= 1u << i;

 return ret;
}
