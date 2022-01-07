
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int protocol; scalar_t__ data; } ;
struct rx {struct sk_buff* skb; int dma_addr; } ;
struct rfd {int command; int actual_size; int status; } ;
struct nic {scalar_t__ ru_running; int rx_over_length_errors; struct net_device* netdev; TYPE_2__* csr; int pdev; } ;
struct TYPE_6__ {int rx_bytes; int rx_packets; } ;
struct net_device {TYPE_3__ stats; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ scb; } ;


 int EAGAIN ;
 int ENODATA ;
 int ETH_DATA_LEN ;
 int KERN_DEBUG ;
 int PCI_DMA_BIDIRECTIONAL ;
 int PCI_DMA_FROMDEVICE ;
 int RFD_BUF_LEN ;
 scalar_t__ RU_RUNNING ;
 void* RU_SUSPENDED ;
 int VLAN_ETH_HLEN ;
 int cb_complete ;
 int cb_el ;
 int cb_ok ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ioread8 (int *) ;
 int le16_to_cpu (int ) ;
 int netif_printk (struct nic*,int ,int ,struct net_device*,char*,int) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 int rmb () ;
 int rus_no_res ;
 int rx_status ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int e100_rx_indicate(struct nic *nic, struct rx *rx,
 unsigned int *work_done, unsigned int work_to_do)
{
 struct net_device *dev = nic->netdev;
 struct sk_buff *skb = rx->skb;
 struct rfd *rfd = (struct rfd *)skb->data;
 u16 rfd_status, actual_size;

 if (unlikely(work_done && *work_done >= work_to_do))
  return -EAGAIN;


 pci_dma_sync_single_for_cpu(nic->pdev, rx->dma_addr,
  sizeof(struct rfd), PCI_DMA_BIDIRECTIONAL);
 rfd_status = le16_to_cpu(rfd->status);

 netif_printk(nic, rx_status, KERN_DEBUG, nic->netdev,
       "status=0x%04X\n", rfd_status);
 rmb();


 if (unlikely(!(rfd_status & cb_complete))) {





  if ((le16_to_cpu(rfd->command) & cb_el) &&
      (RU_RUNNING == nic->ru_running))

   if (ioread8(&nic->csr->scb.status) & rus_no_res)
    nic->ru_running = RU_SUSPENDED;
  pci_dma_sync_single_for_device(nic->pdev, rx->dma_addr,
            sizeof(struct rfd),
            PCI_DMA_FROMDEVICE);
  return -ENODATA;
 }


 actual_size = le16_to_cpu(rfd->actual_size) & 0x3FFF;
 if (unlikely(actual_size > RFD_BUF_LEN - sizeof(struct rfd)))
  actual_size = RFD_BUF_LEN - sizeof(struct rfd);


 pci_unmap_single(nic->pdev, rx->dma_addr,
  RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);







 if ((le16_to_cpu(rfd->command) & cb_el) &&
     (RU_RUNNING == nic->ru_running)) {

     if (ioread8(&nic->csr->scb.status) & rus_no_res)
  nic->ru_running = RU_SUSPENDED;
 }


 skb_reserve(skb, sizeof(struct rfd));
 skb_put(skb, actual_size);
 skb->protocol = eth_type_trans(skb, nic->netdev);

 if (unlikely(!(rfd_status & cb_ok))) {

  dev_kfree_skb_any(skb);
 } else if (actual_size > ETH_DATA_LEN + VLAN_ETH_HLEN) {

  nic->rx_over_length_errors++;
  dev_kfree_skb_any(skb);
 } else {
  dev->stats.rx_packets++;
  dev->stats.rx_bytes += actual_size;
  netif_receive_skb(skb);
  if (work_done)
   (*work_done)++;
 }

 rx->skb = ((void*)0);

 return 0;
}
