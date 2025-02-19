
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct ipg_rx {int frag_info; } ;
struct ipg_jumbo {int found_start; struct sk_buff* skb; int current_size; } ;
struct ipg_nic_private {struct sk_buff** rx_buff; int rxfrag_size; int rx_buf_sz; struct pci_dev* pdev; struct ipg_jumbo jumbo; } ;


 int IPG_RFI_FRAGLEN ;
 scalar_t__ NORMAL_PACKET ;
 int PCI_DMA_FROMDEVICE ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 scalar_t__ ipg_nic_rx_check_error (struct net_device*) ;
 int le64_to_cpu (int ) ;
 int pci_unmap_single (struct pci_dev*,int,int ,int ) ;
 int skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static void ipg_nic_rx_with_start(struct net_device *dev,
      struct ipg_nic_private *sp,
      struct ipg_rx *rxfd, unsigned entry)
{
 struct ipg_jumbo *jumbo = &sp->jumbo;
 struct pci_dev *pdev = sp->pdev;
 struct sk_buff *skb;


 if (ipg_nic_rx_check_error(dev) != NORMAL_PACKET)
  return;


 skb = sp->rx_buff[entry];
 if (!skb)
  return;

 if (jumbo->found_start)
  dev_kfree_skb_irq(jumbo->skb);

 pci_unmap_single(pdev, le64_to_cpu(rxfd->frag_info) & ~IPG_RFI_FRAGLEN,
    sp->rx_buf_sz, PCI_DMA_FROMDEVICE);

 skb_put(skb, sp->rxfrag_size);

 jumbo->found_start = 1;
 jumbo->current_size = sp->rxfrag_size;
 jumbo->skb = skb;

 sp->rx_buff[entry] = ((void*)0);
}
