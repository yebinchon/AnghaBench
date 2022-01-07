
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vnic_wq {int dummy; } ;
struct vlan_ethhdr {void* h_vlan_TCI; void* h_vlan_encapsulated_proto; void* h_vlan_proto; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {int dest_addr; scalar_t__ map_dest; } ;
struct fnic {int * wq_lock; int vlan_id; int pdev; int data_src_addr; TYPE_1__ ctlr; int vlan_hw_insert; int lport; struct vnic_wq* wq; } ;
struct fcoe_hdr {int fcoe_sof; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; int fh_d_id; } ;
struct fc_frame {int dummy; } ;
struct ethhdr {int h_source; int h_dest; void* h_proto; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int ETH_ALEN ;
 int ETH_P_8021Q ;
 int ETH_P_FCOE ;
 int FC_FCOE_ENCAPS_VER (struct fcoe_hdr*,scalar_t__) ;
 scalar_t__ FC_FCOE_VER ;
 scalar_t__ FC_RCTL_ELS_REQ ;
 int PCI_DMA_TODEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int fc_fcoe_set_mac (int ,int ) ;
 struct fc_frame_header* fc_frame_header_get (struct fc_frame*) ;
 scalar_t__ fcoe_ctlr_els_send (TYPE_1__*,int ,struct sk_buff*) ;
 int fnic_queue_wq_desc (struct vnic_wq*,struct sk_buff*,int ,int,int ,int ,int ,int,int,int) ;
 struct sk_buff* fp_skb (struct fc_frame*) ;
 int fr_eof (struct fc_frame*) ;
 int fr_sof (struct fc_frame*) ;
 void* htons (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct fcoe_hdr*,int ,int) ;
 int pci_map_single (int ,struct ethhdr*,int,int ) ;
 int pci_unmap_single (int ,int ,int,int ) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int vnic_wq_desc_avail (struct vnic_wq*) ;

__attribute__((used)) static int fnic_send_frame(struct fnic *fnic, struct fc_frame *fp)
{
 struct vnic_wq *wq = &fnic->wq[0];
 struct sk_buff *skb;
 dma_addr_t pa;
 struct ethhdr *eth_hdr;
 struct vlan_ethhdr *vlan_hdr;
 struct fcoe_hdr *fcoe_hdr;
 struct fc_frame_header *fh;
 u32 tot_len, eth_hdr_len;
 int ret = 0;
 unsigned long flags;

 fh = fc_frame_header_get(fp);
 skb = fp_skb(fp);

 if (unlikely(fh->fh_r_ctl == FC_RCTL_ELS_REQ) &&
     fcoe_ctlr_els_send(&fnic->ctlr, fnic->lport, skb))
  return 0;

 if (!fnic->vlan_hw_insert) {
  eth_hdr_len = sizeof(*vlan_hdr) + sizeof(*fcoe_hdr);
  vlan_hdr = (struct vlan_ethhdr *)skb_push(skb, eth_hdr_len);
  eth_hdr = (struct ethhdr *)vlan_hdr;
  vlan_hdr->h_vlan_proto = htons(ETH_P_8021Q);
  vlan_hdr->h_vlan_encapsulated_proto = htons(ETH_P_FCOE);
  vlan_hdr->h_vlan_TCI = htons(fnic->vlan_id);
  fcoe_hdr = (struct fcoe_hdr *)(vlan_hdr + 1);
 } else {
  eth_hdr_len = sizeof(*eth_hdr) + sizeof(*fcoe_hdr);
  eth_hdr = (struct ethhdr *)skb_push(skb, eth_hdr_len);
  eth_hdr->h_proto = htons(ETH_P_FCOE);
  fcoe_hdr = (struct fcoe_hdr *)(eth_hdr + 1);
 }

 if (fnic->ctlr.map_dest)
  fc_fcoe_set_mac(eth_hdr->h_dest, fh->fh_d_id);
 else
  memcpy(eth_hdr->h_dest, fnic->ctlr.dest_addr, ETH_ALEN);
 memcpy(eth_hdr->h_source, fnic->data_src_addr, ETH_ALEN);

 tot_len = skb->len;
 BUG_ON(tot_len % 4);

 memset(fcoe_hdr, 0, sizeof(*fcoe_hdr));
 fcoe_hdr->fcoe_sof = fr_sof(fp);
 if (FC_FCOE_VER)
  FC_FCOE_ENCAPS_VER(fcoe_hdr, FC_FCOE_VER);

 pa = pci_map_single(fnic->pdev, eth_hdr, tot_len, PCI_DMA_TODEVICE);

 spin_lock_irqsave(&fnic->wq_lock[0], flags);

 if (!vnic_wq_desc_avail(wq)) {
  pci_unmap_single(fnic->pdev, pa,
     tot_len, PCI_DMA_TODEVICE);
  ret = -1;
  goto fnic_send_frame_end;
 }

 fnic_queue_wq_desc(wq, skb, pa, tot_len, fr_eof(fp),
      0 ,
      fnic->vlan_id, 1, 1, 1);
fnic_send_frame_end:
 spin_unlock_irqrestore(&fnic->wq_lock[0], flags);

 if (ret)
  dev_kfree_skb_any(fp_skb(fp));

 return ret;
}
