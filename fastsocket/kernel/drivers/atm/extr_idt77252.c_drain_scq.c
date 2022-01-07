
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_map {struct scq_info* scq; } ;
struct sk_buff {int len; } ;
struct scq_info {int skblock; int pending; int used; int transmit; int next; } ;
struct idt77252_dev {int pcidev; int name; } ;
struct atm_vcc {TYPE_1__* stats; int (* pop ) (struct atm_vcc*,struct sk_buff*) ;} ;
struct TYPE_4__ {struct atm_vcc* vcc; } ;
struct TYPE_3__ {int tx; } ;


 TYPE_2__* ATM_SKB (struct sk_buff*) ;
 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int PCI_DMA_TODEVICE ;
 int TXPRINTK (char*,int ,struct sk_buff*,...) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ push_on_scq (struct idt77252_dev*,struct vc_map*,struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct atm_vcc*,struct sk_buff*) ;

__attribute__((used)) static void
drain_scq(struct idt77252_dev *card, struct vc_map *vc)
{
 struct scq_info *scq = vc->scq;
 struct sk_buff *skb;
 struct atm_vcc *vcc;

 TXPRINTK("%s: SCQ (before drain %2d) next = 0x%p.\n",
   card->name, atomic_read(&scq->used), scq->next);

 skb = skb_dequeue(&scq->transmit);
 if (skb) {
  TXPRINTK("%s: freeing skb at %p.\n", card->name, skb);

  pci_unmap_single(card->pcidev, IDT77252_PRV_PADDR(skb),
     skb->len, PCI_DMA_TODEVICE);

  vcc = ATM_SKB(skb)->vcc;

  if (vcc->pop)
   vcc->pop(vcc, skb);
  else
   dev_kfree_skb(skb);

  atomic_inc(&vcc->stats->tx);
 }

 atomic_dec(&scq->used);

 spin_lock(&scq->skblock);
 while ((skb = skb_dequeue(&scq->pending))) {
  if (push_on_scq(card, vc, skb)) {
   skb_queue_head(&vc->scq->pending, skb);
   break;
  }
 }
 spin_unlock(&scq->skblock);
}
