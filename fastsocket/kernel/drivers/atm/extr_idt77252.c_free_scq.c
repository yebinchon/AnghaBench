
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct scq_info {int pending; int transmit; int paddr; int base; } ;
struct idt77252_dev {int pcidev; } ;
struct atm_vcc {int (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_2__ {struct atm_vcc* vcc; } ;


 TYPE_1__* ATM_SKB (struct sk_buff*) ;
 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int PCI_DMA_TODEVICE ;
 int SCQ_SIZE ;
 int dev_kfree_skb (struct sk_buff*) ;
 int kfree (struct scq_info*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;
 int stub2 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void
free_scq(struct idt77252_dev *card, struct scq_info *scq)
{
 struct sk_buff *skb;
 struct atm_vcc *vcc;

 pci_free_consistent(card->pcidev, SCQ_SIZE,
       scq->base, scq->paddr);

 while ((skb = skb_dequeue(&scq->transmit))) {
  pci_unmap_single(card->pcidev, IDT77252_PRV_PADDR(skb),
     skb->len, PCI_DMA_TODEVICE);

  vcc = ATM_SKB(skb)->vcc;
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb(skb);
 }

 while ((skb = skb_dequeue(&scq->pending))) {
  pci_unmap_single(card->pcidev, IDT77252_PRV_PADDR(skb),
     skb->len, PCI_DMA_TODEVICE);

  vcc = ATM_SKB(skb)->vcc;
  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb(skb);
 }

 kfree(scq);
}
