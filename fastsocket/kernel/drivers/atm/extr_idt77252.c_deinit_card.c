
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_8__ {scalar_t__ base; } ;
struct TYPE_7__ {scalar_t__ base; } ;
struct idt77252_dev {int name; int flags; scalar_t__ membase; scalar_t__* fbq; TYPE_4__* pcidev; TYPE_3__ tsq; TYPE_2__ rsq; int raw_cell_paddr; scalar_t__ raw_cell_hnd; int vcs; int scd2vc; int soft_tst; TYPE_1__* sbpool; scalar_t__ atmdev; int index; } ;
struct TYPE_9__ {int irq; } ;
struct TYPE_6__ {struct sk_buff** skb; } ;


 int DIPRINTK (char*,...) ;
 int FBQ_SIZE ;
 int IDT77252_BIT_INIT ;
 int IDT77252_PRV_PADDR (struct sk_buff*) ;
 int PCI_DMA_FROMDEVICE ;
 int SAR_REG_CFG ;
 int atm_dev_deregister (scalar_t__) ;
 int clear_bit (int ,int *) ;
 int deinit_rsq (struct idt77252_dev*) ;
 int deinit_tsq (struct idt77252_dev*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int free_irq (int ,struct idt77252_dev*) ;
 int iounmap (scalar_t__) ;
 int pci_free_consistent (TYPE_4__*,int,scalar_t__,int ) ;
 int pci_unmap_single (TYPE_4__*,int ,scalar_t__,int ) ;
 int printk (char*,int ) ;
 scalar_t__ skb_end_pointer (struct sk_buff*) ;
 int test_bit (int ,int *) ;
 int vfree (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static void
deinit_card(struct idt77252_dev *card)
{
 struct sk_buff *skb;
 int i, j;

 if (!test_bit(IDT77252_BIT_INIT, &card->flags)) {
  printk("%s: SAR not yet initialized.\n", card->name);
  return;
 }
 DIPRINTK("idt77252: deinitialize card %u\n", card->index);

 writel(0, SAR_REG_CFG);

 if (card->atmdev)
  atm_dev_deregister(card->atmdev);

 for (i = 0; i < 4; i++) {
  for (j = 0; j < FBQ_SIZE; j++) {
   skb = card->sbpool[i].skb[j];
   if (skb) {
    pci_unmap_single(card->pcidev,
       IDT77252_PRV_PADDR(skb),
       (skb_end_pointer(skb) -
        skb->data),
       PCI_DMA_FROMDEVICE);
    card->sbpool[i].skb[j] = ((void*)0);
    dev_kfree_skb(skb);
   }
  }
 }

 vfree(card->soft_tst);

 vfree(card->scd2vc);

 vfree(card->vcs);

 if (card->raw_cell_hnd) {
  pci_free_consistent(card->pcidev, 2 * sizeof(u32),
        card->raw_cell_hnd, card->raw_cell_paddr);
 }

 if (card->rsq.base) {
  DIPRINTK("%s: Release RSQ ...\n", card->name);
  deinit_rsq(card);
 }

 if (card->tsq.base) {
  DIPRINTK("%s: Release TSQ ...\n", card->name);
  deinit_tsq(card);
 }

 DIPRINTK("idt77252: Release IRQ.\n");
 free_irq(card->pcidev->irq, card);

 for (i = 0; i < 4; i++) {
  if (card->fbq[i])
   iounmap(card->fbq[i]);
 }

 if (card->membase)
  iounmap(card->membase);

 clear_bit(IDT77252_BIT_INIT, &card->flags);
 DIPRINTK("%s: Card deinitialized.\n", card->name);
}
