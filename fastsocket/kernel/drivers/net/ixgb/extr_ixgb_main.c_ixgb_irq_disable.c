
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgb_adapter {TYPE_1__* pdev; int hw; } ;
struct TYPE_2__ {int irq; } ;


 int IMC ;
 int IXGB_WRITE_FLUSH (int *) ;
 int IXGB_WRITE_REG (int *,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void
ixgb_irq_disable(struct ixgb_adapter *adapter)
{
 IXGB_WRITE_REG(&adapter->hw, IMC, ~0);
 IXGB_WRITE_FLUSH(&adapter->hw);
 synchronize_irq(adapter->pdev->irq);
}
