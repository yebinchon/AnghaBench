
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 unsigned long SLICE_LOW_SHIFT ;
 int slice_area_is_free (struct mm_struct*,unsigned long,unsigned long) ;

__attribute__((used)) static int slice_low_has_vma(struct mm_struct *mm, unsigned long slice)
{
 return !slice_area_is_free(mm, slice << SLICE_LOW_SHIFT,
       1ul << SLICE_LOW_SHIFT);
}
