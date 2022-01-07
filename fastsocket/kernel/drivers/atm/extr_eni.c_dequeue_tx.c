
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct eni_tx {scalar_t__ words; int tx_wait; TYPE_1__* stats; int (* pop ) (struct eni_tx*,struct sk_buff*) ;int pci_dev; int tx_queue; int index; } ;
struct eni_dev {scalar_t__ words; int tx_wait; TYPE_1__* stats; int (* pop ) (struct eni_tx*,struct sk_buff*) ;int pci_dev; int tx_queue; int index; } ;
struct atm_vcc {scalar_t__ words; int tx_wait; TYPE_1__* stats; int (* pop ) (struct eni_tx*,struct sk_buff*) ;int pci_dev; int tx_queue; int index; } ;
struct atm_dev {scalar_t__ words; int tx_wait; TYPE_1__* stats; int (* pop ) (struct eni_tx*,struct sk_buff*) ;int pci_dev; int tx_queue; int index; } ;
struct TYPE_6__ {struct eni_tx* vcc; } ;
struct TYPE_5__ {scalar_t__ txing; struct eni_tx* tx; } ;
struct TYPE_4__ {int tx; } ;


 TYPE_3__* ATM_SKB (struct sk_buff*) ;
 int DPRINTK (char*,scalar_t__,unsigned int) ;
 struct eni_tx* ENI_DEV (struct eni_tx*) ;
 int ENI_PRV_PADDR (struct sk_buff*) ;
 scalar_t__ ENI_PRV_POS (struct sk_buff*) ;
 scalar_t__ ENI_PRV_SIZE (struct sk_buff*) ;
 TYPE_2__* ENI_VCC (struct eni_tx*) ;
 int MID_TX_DESCRSTART (int ) ;
 int NULLCHECK (struct eni_tx*) ;
 int PCI_DMA_TODEVICE ;
 int atomic_inc (int *) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_complete ;
 scalar_t__ eni_in (int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int stub1 (struct eni_tx*,struct sk_buff*) ;
 int wake_up (int *) ;

__attribute__((used)) static void dequeue_tx(struct atm_dev *dev)
{
 struct eni_dev *eni_dev;
 struct atm_vcc *vcc;
 struct sk_buff *skb;
 struct eni_tx *tx;

 NULLCHECK(dev);
 eni_dev = ENI_DEV(dev);
 NULLCHECK(eni_dev);
 while ((skb = skb_dequeue(&eni_dev->tx_queue))) {
  vcc = ATM_SKB(skb)->vcc;
  NULLCHECK(vcc);
  tx = ENI_VCC(vcc)->tx;
  NULLCHECK(ENI_VCC(vcc)->tx);
  DPRINTK("dequeue_tx: next 0x%lx curr 0x%x\n",ENI_PRV_POS(skb),
      (unsigned) eni_in(MID_TX_DESCRSTART(tx->index)));
  if (ENI_VCC(vcc)->txing < tx->words && ENI_PRV_POS(skb) ==
      eni_in(MID_TX_DESCRSTART(tx->index))) {
   skb_queue_head(&eni_dev->tx_queue,skb);
   break;
  }
  ENI_VCC(vcc)->txing -= ENI_PRV_SIZE(skb);
  pci_unmap_single(eni_dev->pci_dev,ENI_PRV_PADDR(skb),skb->len,
      PCI_DMA_TODEVICE);
  if (vcc->pop) vcc->pop(vcc,skb);
  else dev_kfree_skb_irq(skb);
  atomic_inc(&vcc->stats->tx);
  wake_up(&eni_dev->tx_wait);
dma_complete++;
 }
}
