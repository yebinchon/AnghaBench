
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_adapter {int resource_lock; } ;


 int NES_DBG_HW ;
 int nes_debug (int ,char*,int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static inline int nes_is_resource_allocated(struct nes_adapter *nesadapter,
  unsigned long *resource_array, u32 resource_num)
{
 unsigned long flags;
 int bit_is_set;

 spin_lock_irqsave(&nesadapter->resource_lock, flags);

 bit_is_set = test_bit(resource_num, resource_array);
 nes_debug(NES_DBG_HW, "resource_num %u is%s allocated.\n",
   resource_num, (bit_is_set ? "": " not"));
 spin_unlock_irqrestore(&nesadapter->resource_lock, flags);

 return bit_is_set;
}
