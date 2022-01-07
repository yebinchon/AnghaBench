
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nes_adapter {int resource_lock; } ;


 int clear_bit (int ,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void nes_free_resource(struct nes_adapter *nesadapter,
  unsigned long *resource_array, u32 resource_num)
{
 unsigned long flags;

 spin_lock_irqsave(&nesadapter->resource_lock, flags);
 clear_bit(resource_num, resource_array);
 spin_unlock_irqrestore(&nesadapter->resource_lock, flags);
}
