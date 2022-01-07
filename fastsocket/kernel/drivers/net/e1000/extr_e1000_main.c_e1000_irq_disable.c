
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e1000_hw {int dummy; } ;
struct e1000_adapter {TYPE_1__* pdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int irq; } ;


 int E1000_WRITE_FLUSH () ;
 int IMC ;
 int ew32 (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void e1000_irq_disable(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 ew32(IMC, ~0);
 E1000_WRITE_FLUSH();
 synchronize_irq(adapter->pdev->irq);
}
