
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmxnet3_intr {int type; scalar_t__ num_intrs; TYPE_1__* msix_entries; } ;
struct vmxnet3_adapter {int num_tx_queues; int num_rx_queues; int * netdev; TYPE_2__* pdev; int * rx_queue; int share_intr; int * tx_queue; struct vmxnet3_intr intr; } ;
struct TYPE_4__ {int irq; } ;
struct TYPE_3__ {int vector; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int VMXNET3_INTR_BUDDYSHARE ;
 int VMXNET3_INTR_TXSHARE ;
 int VMXNET3_IT_AUTO ;



 int free_irq (int ,int *) ;

__attribute__((used)) static void
vmxnet3_free_irqs(struct vmxnet3_adapter *adapter)
{
 struct vmxnet3_intr *intr = &adapter->intr;
 BUG_ON(intr->type == VMXNET3_IT_AUTO || intr->num_intrs <= 0);

 switch (intr->type) {
 case 129:
  free_irq(adapter->pdev->irq, adapter->netdev);
  break;
 case 130:
  free_irq(adapter->pdev->irq, adapter->netdev);
  break;
 default:
  BUG();
 }
}
