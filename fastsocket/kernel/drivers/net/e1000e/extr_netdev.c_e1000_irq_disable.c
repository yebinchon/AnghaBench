
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct e1000_hw {int dummy; } ;
struct e1000_adapter {int num_vectors; TYPE_1__* pdev; TYPE_2__* msix_entries; struct e1000_hw hw; } ;
struct TYPE_4__ {int vector; } ;
struct TYPE_3__ {int irq; } ;


 int EIAC_82574 ;
 int IMC ;
 int e1e_flush () ;
 int ew32 (int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void e1000_irq_disable(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 ew32(IMC, ~0);
 if (adapter->msix_entries)
  ew32(EIAC_82574, 0);
 e1e_flush();

 if (adapter->msix_entries) {
  int i;
  for (i = 0; i < adapter->num_vectors; i++)
   synchronize_irq(adapter->msix_entries[i].vector);
 } else {
  synchronize_irq(adapter->pdev->irq);
 }
}
