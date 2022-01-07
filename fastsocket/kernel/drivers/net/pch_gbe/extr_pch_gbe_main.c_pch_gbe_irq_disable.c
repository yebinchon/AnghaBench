
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_2__* reg; } ;
struct pch_gbe_adapter {TYPE_1__* pdev; int irq_sem; struct pch_gbe_hw hw; } ;
struct TYPE_4__ {int INT_EN; int INT_ST; } ;
struct TYPE_3__ {int irq; } ;


 int atomic_inc (int *) ;
 int ioread32 (int *) ;
 int iowrite32 (int ,int *) ;
 int pr_debug (char*,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void pch_gbe_irq_disable(struct pch_gbe_adapter *adapter)
{
 struct pch_gbe_hw *hw = &adapter->hw;

 atomic_inc(&adapter->irq_sem);
 iowrite32(0, &hw->reg->INT_EN);
 ioread32(&hw->reg->INT_ST);
 synchronize_irq(adapter->pdev->irq);

 pr_debug("INT_EN reg : 0x%08x\n", ioread32(&hw->reg->INT_EN));
}
