
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 int NR_SPACE_IDS ;
 unsigned long SHIFT_PER_LONG ;
 unsigned long SPACEID_SHIFT ;
 scalar_t__ dirty_space_ids ;
 unsigned long find_next_zero_bit (long*,int ,unsigned long) ;
 int flush_tlb_all () ;
 scalar_t__ free_space_ids ;
 int sid_lock ;
 long* space_id ;
 unsigned long space_id_index ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

unsigned long alloc_sid(void)
{
 unsigned long index;

 spin_lock(&sid_lock);

 if (free_space_ids == 0) {
  if (dirty_space_ids != 0) {
   spin_unlock(&sid_lock);
   flush_tlb_all();
   spin_lock(&sid_lock);
  }
  BUG_ON(free_space_ids == 0);
 }

 free_space_ids--;

 index = find_next_zero_bit(space_id, NR_SPACE_IDS, space_id_index);
 space_id[index >> SHIFT_PER_LONG] |= (1L << (index & (BITS_PER_LONG - 1)));
 space_id_index = index;

 spin_unlock(&sid_lock);

 return index << SPACEID_SHIFT;
}
