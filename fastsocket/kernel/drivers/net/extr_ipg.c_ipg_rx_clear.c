
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipg_rx {int frag_info; } ;
struct ipg_nic_private {int rx_buf_sz; int pdev; int ** rx_buff; struct ipg_rx* rxd; } ;


 unsigned int IPG_RFDLIST_LENGTH ;
 int IPG_RFI_FRAGLEN ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_irq (int *) ;
 int le64_to_cpu (int ) ;
 int pci_unmap_single (int ,int,int ,int ) ;

__attribute__((used)) static void ipg_rx_clear(struct ipg_nic_private *sp)
{
 unsigned int i;

 for (i = 0; i < IPG_RFDLIST_LENGTH; i++) {
  if (sp->rx_buff[i]) {
   struct ipg_rx *rxfd = sp->rxd + i;

   dev_kfree_skb_irq(sp->rx_buff[i]);
   sp->rx_buff[i] = ((void*)0);
   pci_unmap_single(sp->pdev,
    le64_to_cpu(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
    sp->rx_buf_sz, PCI_DMA_FROMDEVICE);
  }
 }
}
