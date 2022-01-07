
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int eims_enable_mask; int num_q_vectors; TYPE_2__* pdev; TYPE_1__* msix_entries; struct e1000_hw hw; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int E1000_EIAC ;
 int E1000_EIAM ;
 int E1000_EIMC ;
 int E1000_IAM ;
 int E1000_IMC ;
 int rd32 (int ) ;
 int synchronize_irq (int ) ;
 int wr32 (int ,int) ;
 int wrfl () ;

__attribute__((used)) static void igb_irq_disable(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;





 if (adapter->msix_entries) {
  u32 regval = rd32(E1000_EIAM);
  wr32(E1000_EIAM, regval & ~adapter->eims_enable_mask);
  wr32(E1000_EIMC, adapter->eims_enable_mask);
  regval = rd32(E1000_EIAC);
  wr32(E1000_EIAC, regval & ~adapter->eims_enable_mask);
 }

 wr32(E1000_IAM, 0);
 wr32(E1000_IMC, ~0);
 wrfl();
 if (adapter->msix_entries) {
  int i;
  for (i = 0; i < adapter->num_q_vectors; i++)
   synchronize_irq(adapter->msix_entries[i].vector);
 } else {
  synchronize_irq(adapter->pdev->irq);
 }
}
