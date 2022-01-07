
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {unsigned int* regs; int regs_lock; } ;
struct ni_gpct {struct ni_gpct_device* counter_dev; } ;
typedef enum ni_gpct_register { ____Placeholder_ni_gpct_register } ni_gpct_register ;


 int BUG_ON (int) ;
 int NITIO_Num_Registers ;
 int mmiowb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_register (struct ni_gpct*,unsigned int,int) ;

__attribute__((used)) static inline void ni_tio_set_bits_transient(struct ni_gpct *counter,
          enum ni_gpct_register
          register_index, unsigned bit_mask,
          unsigned bit_values,
          unsigned transient_bit_values)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 unsigned long flags;

 BUG_ON(register_index >= NITIO_Num_Registers);
 spin_lock_irqsave(&counter_dev->regs_lock, flags);
 counter_dev->regs[register_index] &= ~bit_mask;
 counter_dev->regs[register_index] |= (bit_values & bit_mask);
 write_register(counter,
         counter_dev->regs[register_index] | transient_bit_values,
         register_index);
 mmiowb();
 spin_unlock_irqrestore(&counter_dev->regs_lock, flags);
}
