
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_9__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {int flags; int num_q_vectors; TYPE_3__* pdev; TYPE_2__* msix_entries; TYPE_4__ hw; } ;
struct TYPE_8__ {int irq; } ;
struct TYPE_7__ {int vector; } ;


 int IXGBE_EIMC ;
 int IXGBE_EIMC_EX (int) ;
 int IXGBE_FLAG_MSIX_ENABLED ;
 int IXGBE_WRITE_FLUSH (TYPE_4__*) ;
 int IXGBE_WRITE_REG (TYPE_4__*,int ,int) ;



 int synchronize_irq (int ) ;

__attribute__((used)) static inline void ixgbe_irq_disable(struct ixgbe_adapter *adapter)
{
 switch (adapter->hw.mac.type) {
 case 130:
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, ~0);
  break;
 case 129:
 case 128:
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC, 0xFFFF0000);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(0), ~0);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_EIMC_EX(1), ~0);
  break;
 default:
  break;
 }
 IXGBE_WRITE_FLUSH(&adapter->hw);
 if (adapter->flags & IXGBE_FLAG_MSIX_ENABLED) {
  int vector;

  for (vector = 0; vector < adapter->num_q_vectors; vector++)
   synchronize_irq(adapter->msix_entries[vector].vector);

  synchronize_irq(adapter->msix_entries[vector++].vector);
 } else {
  synchronize_irq(adapter->pdev->irq);
 }
}
