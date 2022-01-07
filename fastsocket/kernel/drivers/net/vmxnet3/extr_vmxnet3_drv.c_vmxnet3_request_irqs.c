
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int intr_idx; } ;
struct vmxnet3_rx_queue {char* name; int qid; int qid2; TYPE_3__ comp_ring; int dev; } ;
struct vmxnet3_intr {scalar_t__ type; char* event_msi_vector_name; int event_intr_idx; int num_intrs; int mask_mode; int * mod_levels; TYPE_2__* msix_entries; } ;
struct vmxnet3_adapter {int num_tx_queues; scalar_t__ share_intr; int num_rx_queues; struct vmxnet3_rx_queue* netdev; struct vmxnet3_rx_queue* rx_queue; struct vmxnet3_rx_queue* tx_queue; struct vmxnet3_intr intr; TYPE_1__* pdev; } ;
struct TYPE_5__ {int vector; } ;
struct TYPE_4__ {int irq; } ;


 int IRQF_SHARED ;
 int UPT1_IML_ADAPTIVE ;
 scalar_t__ VMXNET3_INTR_BUDDYSHARE ;
 scalar_t__ VMXNET3_INTR_TXSHARE ;
 scalar_t__ VMXNET3_IT_MSI ;
 scalar_t__ VMXNET3_IT_MSIX ;
 int dev_err (int *,char*,char*,int) ;
 int netdev_err (struct vmxnet3_rx_queue*,char*,scalar_t__,int) ;
 int netdev_info (struct vmxnet3_rx_queue*,char*,scalar_t__,int ,int) ;
 int request_irq (int ,int ,int ,char*,struct vmxnet3_rx_queue*) ;
 int sprintf (char*,char*,char*,int) ;
 int vmxnet3_intr ;
 int vmxnet3_msix_event ;
 int vmxnet3_msix_rx ;
 int vmxnet3_msix_tx ;

__attribute__((used)) static int
vmxnet3_request_irqs(struct vmxnet3_adapter *adapter)
{
 struct vmxnet3_intr *intr = &adapter->intr;
 int err = 0, i;
 int vector = 0;
  adapter->num_rx_queues = 1;
  err = request_irq(adapter->pdev->irq, vmxnet3_intr,
      IRQF_SHARED, adapter->netdev->name,
      adapter->netdev);



 intr->num_intrs = vector + 1;
 if (err) {
  netdev_err(adapter->netdev,
      "Failed to request irq (intr type:%d), error %d\n",
      intr->type, err);
 } else {

  for (i = 0; i < adapter->num_rx_queues; i++) {
   struct vmxnet3_rx_queue *rq = &adapter->rx_queue[i];
   rq->qid = i;
   rq->qid2 = i + adapter->num_rx_queues;
  }




  for (i = 0; i < intr->num_intrs; i++)
   intr->mod_levels[i] = UPT1_IML_ADAPTIVE;
  if (adapter->intr.type != VMXNET3_IT_MSIX) {
   adapter->intr.event_intr_idx = 0;
   for (i = 0; i < adapter->num_tx_queues; i++)
    adapter->tx_queue[i].comp_ring.intr_idx = 0;
   adapter->rx_queue[0].comp_ring.intr_idx = 0;
  }

  netdev_info(adapter->netdev,
       "intr type %u, mode %u, %u vectors allocated\n",
       intr->type, intr->mask_mode, intr->num_intrs);
 }

 return err;
}
