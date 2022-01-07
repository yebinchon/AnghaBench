
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int dummy; } ;
struct vlan_ethhdr {void* h_vlan_TCI; int h_vlan_encapsulated_proto; void* h_vlan_proto; } ;
struct sk_buff {int len; int data; } ;
struct fnic {int * wq_lock; int vlan_id; int pdev; int vlan_hw_insert; struct vnic_wq* wq; } ;
struct fcoe_ctlr {int dummy; } ;
struct ethhdr {int h_proto; } ;
typedef int dma_addr_t ;


 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int PCI_DMA_TODEVICE ;
 struct fnic* fnic_from_ctlr (struct fcoe_ctlr*) ;
 int fnic_queue_wq_eth_desc (struct vnic_wq*,struct sk_buff*,int ,int ,int ,int ,int) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (struct vlan_ethhdr*,struct ethhdr*,int) ;
 int pci_map_single (int ,int ,int ,int ) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vnic_wq_desc_avail (struct vnic_wq*) ;

void fnic_eth_send(struct fcoe_ctlr *fip, struct sk_buff *skb)
{
 struct fnic *fnic = fnic_from_ctlr(fip);
 struct vnic_wq *wq = &fnic->wq[0];
 dma_addr_t pa;
 struct ethhdr *eth_hdr;
 struct vlan_ethhdr *vlan_hdr;
 unsigned long flags;

 if (!fnic->vlan_hw_insert) {
  eth_hdr = (struct ethhdr *)skb_mac_header(skb);
  vlan_hdr = (struct vlan_ethhdr *)skb_push(skb,
    sizeof(*vlan_hdr) - sizeof(*eth_hdr));
  memcpy(vlan_hdr, eth_hdr, 2 * ETH_ALEN);
  vlan_hdr->h_vlan_proto = htons(ETH_P_8021Q);
  vlan_hdr->h_vlan_encapsulated_proto = eth_hdr->h_proto;
  vlan_hdr->h_vlan_TCI = htons(fnic->vlan_id);
 }

 pa = pci_map_single(fnic->pdev, skb->data, skb->len, PCI_DMA_TODEVICE);

 spin_lock_irqsave(&fnic->wq_lock[0], flags);
 if (!vnic_wq_desc_avail(wq)) {
  pci_unmap_single(fnic->pdev, pa, skb->len, PCI_DMA_TODEVICE);
  spin_unlock_irqrestore(&fnic->wq_lock[0], flags);
  kfree_skb(skb);
  return;
 }

 fnic_queue_wq_eth_desc(wq, skb, pa, skb->len,
          0 ,
          fnic->vlan_id, 1);
 spin_unlock_irqrestore(&fnic->wq_lock[0], flags);
}
