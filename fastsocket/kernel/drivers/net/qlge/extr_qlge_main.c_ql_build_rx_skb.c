
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data_len; int truesize; int data; } ;
struct rx_ring {int lbq_buf_size; } ;
struct ql_adapter {int ndev; int pdev; } ;
struct ib_mac_iocb_rsp {int flags4; int flags3; int flags2; int hdr_len; int data_len; } ;
struct TYPE_3__ {int offset; int page; } ;
struct TYPE_4__ {TYPE_1__ pg_chunk; struct sk_buff* skb; } ;
struct bq_desc {TYPE_2__ p; } ;


 int ETH_HLEN ;
 int IB_MAC_IOCB_RSP_DL ;
 int IB_MAC_IOCB_RSP_DS ;
 int IB_MAC_IOCB_RSP_HS ;
 int IB_MAC_IOCB_RSP_HV ;
 int IB_MAC_IOCB_RSP_V ;
 int KERN_DEBUG ;
 int NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int VLAN_ETH_HLEN ;
 int __pskb_pull_tail (struct sk_buff*,int ) ;
 int le32_to_cpu (int ) ;
 int mapaddr ;
 int maplen ;
 int memcpy (int ,int ,int) ;
 struct sk_buff* netdev_alloc_skb (int ,int) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*,...) ;
 int pci_dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int pci_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int pci_unmap_addr (struct bq_desc*,int ) ;
 int pci_unmap_len (struct bq_desc*,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int probe ;
 struct bq_desc* ql_get_curr_lchunk (struct ql_adapter*,struct rx_ring*) ;
 struct bq_desc* ql_get_curr_sbuf (struct rx_ring*) ;
 int ql_realign_skb (struct sk_buff*,int) ;
 int rx_status ;
 int skb_fill_page_desc (struct sk_buff*,int,int ,int,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *ql_build_rx_skb(struct ql_adapter *qdev,
           struct rx_ring *rx_ring,
           struct ib_mac_iocb_rsp *ib_mac_rsp)
{
 struct bq_desc *lbq_desc;
 struct bq_desc *sbq_desc;
 struct sk_buff *skb = ((void*)0);
 u32 length = le32_to_cpu(ib_mac_rsp->data_len);
       u32 hdr_len = le32_to_cpu(ib_mac_rsp->hdr_len);




 if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HV &&
     ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "Header of %d bytes in small buffer.\n", hdr_len);



  sbq_desc = ql_get_curr_sbuf(rx_ring);
  pci_unmap_single(qdev->pdev,
    pci_unmap_addr(sbq_desc, mapaddr),
    pci_unmap_len(sbq_desc, maplen),
    PCI_DMA_FROMDEVICE);
  skb = sbq_desc->p.skb;
  ql_realign_skb(skb, hdr_len);
  skb_put(skb, hdr_len);
  sbq_desc->p.skb = ((void*)0);
 }




 if (unlikely(!length)) {
  netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
        "No Data buffer in this packet.\n");
  return skb;
 }

 if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DS) {
  if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "Headers in small, data of %d bytes in small, combine them.\n",
         length);







   sbq_desc = ql_get_curr_sbuf(rx_ring);
   pci_dma_sync_single_for_cpu(qdev->pdev,
          pci_unmap_addr
          (sbq_desc, mapaddr),
          pci_unmap_len
          (sbq_desc, maplen),
          PCI_DMA_FROMDEVICE);
   memcpy(skb_put(skb, length),
          sbq_desc->p.skb->data, length);
   pci_dma_sync_single_for_device(qdev->pdev,
             pci_unmap_addr
             (sbq_desc,
       mapaddr),
             pci_unmap_len
             (sbq_desc,
       maplen),
             PCI_DMA_FROMDEVICE);
  } else {
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "%d bytes in a single small buffer.\n",
         length);
   sbq_desc = ql_get_curr_sbuf(rx_ring);
   skb = sbq_desc->p.skb;
   ql_realign_skb(skb, length);
   skb_put(skb, length);
   pci_unmap_single(qdev->pdev,
      pci_unmap_addr(sbq_desc,
       mapaddr),
      pci_unmap_len(sbq_desc,
             maplen),
      PCI_DMA_FROMDEVICE);
   sbq_desc->p.skb = ((void*)0);
  }
 } else if (ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_DL) {
  if (ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS) {
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "Header in small, %d bytes in large. Chain large to small!\n",
         length);





   lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "Chaining page at offset = %d, for %d bytes  to skb.\n",
         lbq_desc->p.pg_chunk.offset, length);
   skb_fill_page_desc(skb, 0, lbq_desc->p.pg_chunk.page,
      lbq_desc->p.pg_chunk.offset,
      length);
   skb->len += length;
   skb->data_len += length;
   skb->truesize += length;
  } else {





   lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
   skb = netdev_alloc_skb(qdev->ndev, length);
   if (skb == ((void*)0)) {
    netif_printk(qdev, probe, KERN_DEBUG, qdev->ndev,
          "No skb available, drop the packet.\n");
    return ((void*)0);
   }
   pci_unmap_page(qdev->pdev,
           pci_unmap_addr(lbq_desc,
            mapaddr),
           pci_unmap_len(lbq_desc, maplen),
           PCI_DMA_FROMDEVICE);
   skb_reserve(skb, NET_IP_ALIGN);
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "%d bytes of headers and data in large. Chain page to new skb and pull tail.\n",
         length);
   skb_fill_page_desc(skb, 0,
      lbq_desc->p.pg_chunk.page,
      lbq_desc->p.pg_chunk.offset,
      length);
   skb->len += length;
   skb->data_len += length;
   skb->truesize += length;
   length -= length;
   __pskb_pull_tail(skb,
    (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) ?
    VLAN_ETH_HLEN : ETH_HLEN);
  }
 } else {
  int size, i = 0;
  sbq_desc = ql_get_curr_sbuf(rx_ring);
  pci_unmap_single(qdev->pdev,
     pci_unmap_addr(sbq_desc, mapaddr),
     pci_unmap_len(sbq_desc, maplen),
     PCI_DMA_FROMDEVICE);
  if (!(ib_mac_rsp->flags4 & IB_MAC_IOCB_RSP_HS)) {
   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "%d bytes of headers & data in chain of large.\n",
         length);
   skb = sbq_desc->p.skb;
   sbq_desc->p.skb = ((void*)0);
   skb_reserve(skb, NET_IP_ALIGN);
  }
  while (length > 0) {
   lbq_desc = ql_get_curr_lchunk(qdev, rx_ring);
   size = (length < rx_ring->lbq_buf_size) ? length :
    rx_ring->lbq_buf_size;

   netif_printk(qdev, rx_status, KERN_DEBUG, qdev->ndev,
         "Adding page %d to skb for %d bytes.\n",
         i, size);
   skb_fill_page_desc(skb, i,
      lbq_desc->p.pg_chunk.page,
      lbq_desc->p.pg_chunk.offset,
      size);
   skb->len += size;
   skb->data_len += size;
   skb->truesize += size;
   length -= size;
   i++;
  }
  __pskb_pull_tail(skb, (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) ?
    VLAN_ETH_HLEN : ETH_HLEN);
 }
 return skb;
}
