
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipg_tx {int frag_info; } ;
struct ipg_nic_private {TYPE_1__** tx_buff; int pdev; struct ipg_tx* txd; } ;
struct TYPE_2__ {int len; } ;


 unsigned int IPG_TFDLIST_LENGTH ;
 int IPG_TFI_FRAGLEN ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_irq (TYPE_1__*) ;
 int le64_to_cpu (int ) ;
 int pci_unmap_single (int ,int,int ,int ) ;

__attribute__((used)) static void ipg_tx_clear(struct ipg_nic_private *sp)
{
 unsigned int i;

 for (i = 0; i < IPG_TFDLIST_LENGTH; i++) {
  if (sp->tx_buff[i]) {
   struct ipg_tx *txfd = sp->txd + i;

   pci_unmap_single(sp->pdev,
    le64_to_cpu(txfd->frag_info) & ~IPG_TFI_FRAGLEN,
    sp->tx_buff[i]->len, PCI_DMA_TODEVICE);

   dev_kfree_skb_irq(sp->tx_buff[i]);

   sp->tx_buff[i] = ((void*)0);
  }
 }
}
