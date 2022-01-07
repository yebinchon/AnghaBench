
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int low_slices_psize; int high_slices_psize; } ;
struct mm_struct {TYPE_1__ context; } ;


 unsigned long GET_HIGH_SLICE_INDEX (unsigned long) ;
 unsigned long GET_LOW_SLICE_INDEX (unsigned long) ;
 unsigned long SLICE_LOW_TOP ;
 int slice_convert_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spu_flush_all_slbs (struct mm_struct*) ;

void slice_set_psize(struct mm_struct *mm, unsigned long address,
       unsigned int psize)
{
 unsigned long i, flags;
 u64 *p;

 spin_lock_irqsave(&slice_convert_lock, flags);
 if (address < SLICE_LOW_TOP) {
  i = GET_LOW_SLICE_INDEX(address);
  p = &mm->context.low_slices_psize;
 } else {
  i = GET_HIGH_SLICE_INDEX(address);
  p = &mm->context.high_slices_psize;
 }
 *p = (*p & ~(0xful << (i * 4))) | ((unsigned long) psize << (i * 4));
 spin_unlock_irqrestore(&slice_convert_lock, flags);




}
