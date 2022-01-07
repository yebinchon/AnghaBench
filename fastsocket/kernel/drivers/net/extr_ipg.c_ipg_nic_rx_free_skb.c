
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipg_rx {int frag_info; } ;
struct ipg_nic_private {unsigned int rx_current; int ** rx_buff; int rx_buf_sz; int pdev; struct ipg_rx* rxd; } ;


 unsigned int IPG_RFDLIST_LENGTH ;
 int IPG_RFI_FRAGLEN ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_irq (int *) ;
 int le64_to_cpu (int ) ;
 struct ipg_nic_private* netdev_priv (struct net_device*) ;
 int pci_unmap_single (int ,int,int ,int ) ;

__attribute__((used)) static void ipg_nic_rx_free_skb(struct net_device *dev)
{
 struct ipg_nic_private *sp = netdev_priv(dev);
 unsigned int entry = sp->rx_current % IPG_RFDLIST_LENGTH;

 if (sp->rx_buff[entry]) {
  struct ipg_rx *rxfd = sp->rxd + entry;

  pci_unmap_single(sp->pdev,
   le64_to_cpu(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
   sp->rx_buf_sz, PCI_DMA_FROMDEVICE);
  dev_kfree_skb_irq(sp->rx_buff[entry]);
  sp->rx_buff[entry] = ((void*)0);
 }
}
