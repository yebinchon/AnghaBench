
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int intr_mask; } ;
struct atl1c_adapter {TYPE_1__ hw; int irq_sem; } ;


 int AT_WRITE_FLUSH (TYPE_1__*) ;
 int AT_WRITE_REG (TYPE_1__*,int ,int) ;
 int REG_IMR ;
 int REG_ISR ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline void atl1c_irq_enable(struct atl1c_adapter *adapter)
{
 if (likely(atomic_dec_and_test(&adapter->irq_sem))) {
  AT_WRITE_REG(&adapter->hw, REG_ISR, 0x7FFFFFFF);
  AT_WRITE_REG(&adapter->hw, REG_IMR, adapter->hw.intr_mask);
  AT_WRITE_FLUSH(&adapter->hw);
 }
}
