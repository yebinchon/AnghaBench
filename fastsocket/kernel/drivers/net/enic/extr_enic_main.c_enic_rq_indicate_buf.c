
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct vnic_rq_buf {int len; int dma_addr; struct sk_buff* os_buf; } ;
struct vnic_rq {int vdev; } ;
struct sk_buff {int ip_summed; int csum; int protocol; scalar_t__ data; } ;
struct net_device {int features; } ;
struct enic {int * napi; int vlan_group; scalar_t__ csum_rx_enabled; int rq_truncated_pkts; int rq_bad_fcs; int pdev; struct net_device* netdev; } ;
struct cq_enet_rq_desc {int dummy; } ;
struct cq_desc {int dummy; } ;


 int CHECKSUM_COMPLETE ;
 scalar_t__ CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK ;
 int NETIF_F_GRO ;
 scalar_t__ NET_IP_ALIGN ;
 int PCI_DMA_FROMDEVICE ;
 int cq_enet_rq_desc_dec (struct cq_enet_rq_desc*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int htons (scalar_t__) ;
 int napi_gro_receive (int *,struct sk_buff*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pci_unmap_single (int ,int ,int ,int ) ;
 int prefetch (scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int vlan_gro_receive (int *,int ,scalar_t__,struct sk_buff*) ;
 int vlan_hwaccel_receive_skb (struct sk_buff*,int ,scalar_t__) ;
 struct enic* vnic_dev_priv (int ) ;

__attribute__((used)) static void enic_rq_indicate_buf(struct vnic_rq *rq,
 struct cq_desc *cq_desc, struct vnic_rq_buf *buf,
 int skipped, void *opaque)
{
 struct enic *enic = vnic_dev_priv(rq->vdev);
 struct net_device *netdev = enic->netdev;
 struct sk_buff *skb;

 u8 type, color, eop, sop, ingress_port, vlan_stripped;
 u8 fcoe, fcoe_sof, fcoe_fc_crc_ok, fcoe_enc_error, fcoe_eof;
 u8 tcp_udp_csum_ok, udp, tcp, ipv4_csum_ok;
 u8 ipv6, ipv4, ipv4_fragment, fcs_ok, rss_type, csum_not_calc;
 u8 packet_error;
 u16 q_number, completed_index, bytes_written, vlan_tci, checksum;
 u32 rss_hash;

 if (skipped)
  return;

 skb = buf->os_buf;
 prefetch(skb->data - NET_IP_ALIGN);
 pci_unmap_single(enic->pdev, buf->dma_addr,
  buf->len, PCI_DMA_FROMDEVICE);

 cq_enet_rq_desc_dec((struct cq_enet_rq_desc *)cq_desc,
  &type, &color, &q_number, &completed_index,
  &ingress_port, &fcoe, &eop, &sop, &rss_type,
  &csum_not_calc, &rss_hash, &bytes_written,
  &packet_error, &vlan_stripped, &vlan_tci, &checksum,
  &fcoe_sof, &fcoe_fc_crc_ok, &fcoe_enc_error,
  &fcoe_eof, &tcp_udp_csum_ok, &udp, &tcp,
  &ipv4_csum_ok, &ipv6, &ipv4, &ipv4_fragment,
  &fcs_ok);

 if (packet_error) {

  if (!fcs_ok) {
   if (bytes_written > 0)
    enic->rq_bad_fcs++;
   else if (bytes_written == 0)
    enic->rq_truncated_pkts++;
  }

  dev_kfree_skb_any(skb);

  return;
 }

 if (eop && bytes_written > 0) {




  skb_put(skb, bytes_written);
  skb->protocol = eth_type_trans(skb, netdev);

  if (enic->csum_rx_enabled && !csum_not_calc) {
   skb->csum = htons(checksum);
   skb->ip_summed = CHECKSUM_COMPLETE;
  }

  if (vlan_stripped &&
   (vlan_tci & CQ_ENET_RQ_DESC_VLAN_TCI_VLAN_MASK)) {

   if (netdev->features & NETIF_F_GRO)
    vlan_gro_receive(&enic->napi[q_number],
     enic->vlan_group, vlan_tci, skb);
   else
    vlan_hwaccel_receive_skb(skb,
     enic->vlan_group, vlan_tci);

  } else {

   if (netdev->features & NETIF_F_GRO)
    napi_gro_receive(&enic->napi[q_number], skb);
   else
    netif_receive_skb(skb);

  }
 } else {




  dev_kfree_skb_any(skb);
 }
}
