
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atl1e_adapter {TYPE_1__* pdev; int hw; int irq_sem; } ;
struct TYPE_2__ {int irq; } ;


 int AT_WRITE_FLUSH (int *) ;
 int AT_WRITE_REG (int *,int ,int ) ;
 int REG_IMR ;
 int atomic_inc (int *) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static inline void atl1e_irq_disable(struct atl1e_adapter *adapter)
{
 atomic_inc(&adapter->irq_sem);
 AT_WRITE_REG(&adapter->hw, REG_IMR, 0);
 AT_WRITE_FLUSH(&adapter->hw);
 synchronize_irq(adapter->pdev->irq);
}
