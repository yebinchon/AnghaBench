
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slice_mask {int dummy; } ;
struct mm_struct {int dummy; } ;


 int slice_convert (struct mm_struct*,struct slice_mask,unsigned int) ;
 struct slice_mask slice_range_to_mask (unsigned long,unsigned long) ;

void slice_set_range_psize(struct mm_struct *mm, unsigned long start,
      unsigned long len, unsigned int psize)
{
 struct slice_mask mask = slice_range_to_mask(start, len);

 slice_convert(mm, mask, psize);
}
