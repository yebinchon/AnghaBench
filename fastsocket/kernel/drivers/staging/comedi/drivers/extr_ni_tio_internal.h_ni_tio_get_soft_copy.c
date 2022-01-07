
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int* regs; int regs_lock; } ;
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int BUG_ON (int) ;
 int NITIO_Num_Registers ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned ni_tio_get_soft_copy(const struct ni_gpct *counter,
         enum ni_gpct_register
         register_index)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned long flags;
 unsigned value;

 BUG_ON(register_index >= NITIO_Num_Registers);
 spin_lock_irqsave(&counter_dev->regs_lock, flags);
 value = counter_dev->regs[register_index];
 spin_unlock_irqrestore(&counter_dev->regs_lock, flags);
 return value;
}
