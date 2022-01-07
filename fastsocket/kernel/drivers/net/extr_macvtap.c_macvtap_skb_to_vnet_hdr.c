
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_hdr {int flags; int csum_offset; scalar_t__ csum_start; int gso_type; int gso_size; int hdr_len; } ;
struct skb_shared_info {int gso_type; int gso_size; } ;
struct sk_buff {scalar_t__ ip_summed; int csum_offset; scalar_t__ csum_start; } ;


 int BUG () ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CHECKSUM_UNNECESSARY ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int SKB_GSO_TCP_ECN ;
 int SKB_GSO_UDP ;
 int VIRTIO_NET_HDR_F_DATA_VALID ;
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ;
 int VIRTIO_NET_HDR_GSO_ECN ;
 int VIRTIO_NET_HDR_GSO_NONE ;
 int VIRTIO_NET_HDR_GSO_TCPV4 ;
 int VIRTIO_NET_HDR_GSO_TCPV6 ;
 int VIRTIO_NET_HDR_GSO_UDP ;
 int memset (struct virtio_net_hdr*,int ,int) ;
 int skb_headlen (struct sk_buff const*) ;
 scalar_t__ skb_headroom (struct sk_buff const*) ;
 scalar_t__ skb_is_gso (struct sk_buff const*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static int macvtap_skb_to_vnet_hdr(const struct sk_buff *skb,
       struct virtio_net_hdr *vnet_hdr)
{
 memset(vnet_hdr, 0, sizeof(*vnet_hdr));

 if (skb_is_gso(skb)) {
  struct skb_shared_info *sinfo = skb_shinfo(skb);


  vnet_hdr->hdr_len = skb_headlen(skb);
  vnet_hdr->gso_size = sinfo->gso_size;
  if (sinfo->gso_type & SKB_GSO_TCPV4)
   vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV4;
  else if (sinfo->gso_type & SKB_GSO_TCPV6)
   vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_TCPV6;
  else if (sinfo->gso_type & SKB_GSO_UDP)
   vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_UDP;
  else
   BUG();
  if (sinfo->gso_type & SKB_GSO_TCP_ECN)
   vnet_hdr->gso_type |= VIRTIO_NET_HDR_GSO_ECN;
 } else
  vnet_hdr->gso_type = VIRTIO_NET_HDR_GSO_NONE;

 if (skb->ip_summed == CHECKSUM_PARTIAL) {
  vnet_hdr->flags = VIRTIO_NET_HDR_F_NEEDS_CSUM;
  vnet_hdr->csum_start = skb->csum_start -
     skb_headroom(skb);
  vnet_hdr->csum_offset = skb->csum_offset;
 } else if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
  vnet_hdr->flags = VIRTIO_NET_HDR_F_DATA_VALID;
 }

 return 0;
}
