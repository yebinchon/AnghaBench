
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtio_net_hdr {int flags; size_t csum_start; size_t csum_offset; size_t hdr_len; int gso_type; scalar_t__ gso_size; int member_0; } ;
struct tun_struct {int flags; size_t vnet_hdr_sz; TYPE_3__* dev; } ;
struct tun_pi {void* proto; int member_1; int member_0; } ;
struct sk_buff {int* data; void* protocol; TYPE_3__* dev; int ip_summed; } ;
struct iovec {int dummy; } ;
typedef size_t ssize_t ;
typedef int pi ;
typedef int gso ;
struct TYPE_4__ {size_t rx_bytes; int rx_packets; int rx_frame_errors; int rx_dropped; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;
struct TYPE_5__ {scalar_t__ gso_size; scalar_t__ gso_segs; int gso_type; } ;


 int CHECKSUM_UNNECESSARY ;
 size_t EAGAIN ;
 size_t EFAULT ;
 size_t EINVAL ;
 size_t ETH_HLEN ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 size_t NET_IP_ALIGN ;
 size_t PTR_ERR (struct sk_buff*) ;
 int SKB_GSO_DODGY ;
 int SKB_GSO_TCPV4 ;
 int SKB_GSO_TCPV6 ;
 int SKB_GSO_TCP_ECN ;
 int SKB_GSO_UDP ;
 int TUN_NOCHECKSUM ;
 int TUN_NO_PI ;


 int TUN_TYPE_MASK ;
 int TUN_VNET_HDR ;
 int VIRTIO_NET_HDR_F_NEEDS_CSUM ;
 int VIRTIO_NET_HDR_GSO_ECN ;
 int VIRTIO_NET_HDR_GSO_NONE ;



 int cpu_to_be16 (int ) ;
 void* eth_type_trans (struct sk_buff*,TYPE_3__*) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ memcpy_fromiovecend (void*,struct iovec const*,int,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 int pr_debug (char*) ;
 scalar_t__ skb_copy_datagram_from_iovec (struct sk_buff*,int ,struct iovec const*,int,size_t) ;
 int skb_partial_csum_set (struct sk_buff*,size_t,size_t) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 struct sk_buff* tun_alloc_skb (struct tun_struct*,size_t,size_t,size_t,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static __inline__ ssize_t tun_get_user(struct tun_struct *tun,
           const struct iovec *iv, size_t count,
           int noblock)
{
 struct tun_pi pi = { 0, cpu_to_be16(ETH_P_IP) };
 struct sk_buff *skb;
 size_t len = count, align = 0;
 struct virtio_net_hdr gso = { 0 };
 int offset = 0;

 if (!(tun->flags & TUN_NO_PI)) {
  if ((len -= sizeof(pi)) > count)
   return -EINVAL;

  if (memcpy_fromiovecend((void *)&pi, iv, 0, sizeof(pi)))
   return -EFAULT;
  offset += sizeof(pi);
 }

 if (tun->flags & TUN_VNET_HDR) {
  if ((len -= tun->vnet_hdr_sz) > count)
   return -EINVAL;

  if (memcpy_fromiovecend((void *)&gso, iv, offset, sizeof(gso)))
   return -EFAULT;

  if ((gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) &&
      gso.csum_start + gso.csum_offset + 2 > gso.hdr_len)
   gso.hdr_len = gso.csum_start + gso.csum_offset + 2;

  if (gso.hdr_len > len)
   return -EINVAL;
  offset += tun->vnet_hdr_sz;
 }

 if ((tun->flags & TUN_TYPE_MASK) == 132) {
  align = NET_IP_ALIGN;
  if (unlikely(len < ETH_HLEN ||
        (gso.hdr_len && gso.hdr_len < ETH_HLEN)))
   return -EINVAL;
 }

 skb = tun_alloc_skb(tun, align, len, gso.hdr_len, noblock);
 if (IS_ERR(skb)) {
  if (PTR_ERR(skb) != -EAGAIN)
   tun->dev->stats.rx_dropped++;
  return PTR_ERR(skb);
 }

 if (skb_copy_datagram_from_iovec(skb, 0, iv, offset, len)) {
  tun->dev->stats.rx_dropped++;
  kfree_skb(skb);
  return -EFAULT;
 }

 if (gso.flags & VIRTIO_NET_HDR_F_NEEDS_CSUM) {
  if (!skb_partial_csum_set(skb, gso.csum_start,
       gso.csum_offset)) {
   tun->dev->stats.rx_frame_errors++;
   kfree_skb(skb);
   return -EINVAL;
  }
 } else if (tun->flags & TUN_NOCHECKSUM)
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 switch (tun->flags & TUN_TYPE_MASK) {
 case 131:
  if (tun->flags & TUN_NO_PI) {
   switch (skb->data[0] & 0xf0) {
   case 0x40:
    pi.proto = htons(ETH_P_IP);
    break;
   case 0x60:
    pi.proto = htons(ETH_P_IPV6);
    break;
   default:
    tun->dev->stats.rx_dropped++;
    kfree_skb(skb);
    return -EINVAL;
   }
  }

  skb_reset_mac_header(skb);
  skb->protocol = pi.proto;
  skb->dev = tun->dev;
  break;
 case 132:
  skb->protocol = eth_type_trans(skb, tun->dev);
  break;
 };

 if (gso.gso_type != VIRTIO_NET_HDR_GSO_NONE) {
  pr_debug("GSO!\n");
  switch (gso.gso_type & ~VIRTIO_NET_HDR_GSO_ECN) {
  case 130:
   skb_shinfo(skb)->gso_type = SKB_GSO_TCPV4;
   break;
  case 129:
   skb_shinfo(skb)->gso_type = SKB_GSO_TCPV6;
   break;
  case 128:
   skb_shinfo(skb)->gso_type = SKB_GSO_UDP;
   break;
  default:
   tun->dev->stats.rx_frame_errors++;
   kfree_skb(skb);
   return -EINVAL;
  }

  if (gso.gso_type & VIRTIO_NET_HDR_GSO_ECN)
   skb_shinfo(skb)->gso_type |= SKB_GSO_TCP_ECN;

  skb_shinfo(skb)->gso_size = gso.gso_size;
  if (skb_shinfo(skb)->gso_size == 0) {
   tun->dev->stats.rx_frame_errors++;
   kfree_skb(skb);
   return -EINVAL;
  }


  skb_shinfo(skb)->gso_type |= SKB_GSO_DODGY;
  skb_shinfo(skb)->gso_segs = 0;
 }

 netif_rx_ni(skb);

 tun->dev->stats.rx_packets++;
 tun->dev->stats.rx_bytes += len;

 return count;
}
