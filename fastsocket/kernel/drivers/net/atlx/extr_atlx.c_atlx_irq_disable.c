
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {TYPE_2__* pdev; TYPE_1__ hw; } ;
struct TYPE_4__ {int irq; } ;


 scalar_t__ REG_IMR ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void atlx_irq_disable(struct atlx_adapter *adapter)
{
 iowrite32(0, adapter->hw.hw_addr + REG_IMR);
 ioread32(adapter->hw.hw_addr + REG_IMR);
 synchronize_irq(adapter->pdev->irq);
}
