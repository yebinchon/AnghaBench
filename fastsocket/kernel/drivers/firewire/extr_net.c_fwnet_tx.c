
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef unsigned int u16 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rfc2734_arp {int sip; int fifo_lo; int fifo_hi; int sspd; int max_rec; int hw_addr_len; } ;
struct TYPE_7__ {int tx_errors; int tx_dropped; } ;
struct net_device {TYPE_2__ stats; int broadcast; } ;
struct fwnet_peer {scalar_t__ fifo; unsigned int node_id; unsigned int max_payload; unsigned int datagram_label; int speed; scalar_t__ generation; } ;
struct TYPE_9__ {scalar_t__ w1; scalar_t__ w0; } ;
struct fwnet_packet_task {scalar_t__ fifo_addr; unsigned int dest_node; int outstanding_pkts; unsigned int max_payload; TYPE_4__ hdr; struct fwnet_device* dev; struct sk_buff* skb; int speed; scalar_t__ generation; } ;
struct fwnet_header {scalar_t__ h_proto; scalar_t__ h_dest; } ;
struct fwnet_device {unsigned int broadcast_xmt_max_payload; unsigned int broadcast_xmt_datagramlabel; int local_fifo; int lock; TYPE_1__* card; } ;
struct arphdr {int dummy; } ;
typedef int netdev_tx_t ;
typedef int hdr_buf ;
typedef int __be64 ;
typedef int __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_8__ {int daddr; } ;
struct TYPE_6__ {int link_speed; int max_receive; } ;


 int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int FWNET_ALEN ;
 scalar_t__ FWNET_NO_FIFO_ADDR ;
 int GFP_ATOMIC ;
 unsigned int IEEE1394_ALL_NODES ;
 scalar_t__ IN_MULTICAST (int ) ;
 int NETDEV_TX_OK ;
 scalar_t__ RFC2374_FRAG_HDR_SIZE ;
 scalar_t__ RFC2374_FRAG_OVERHEAD ;
 unsigned int RFC2374_UNFRAG_HDR_SIZE ;
 int RFC2734_HW_ADDR_LEN ;
 int SCODE_100 ;
 int be64_to_cpu (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fwnet_make_ff_hdr (TYPE_4__*,int ,unsigned int,unsigned int) ;
 int fwnet_make_uf_hdr (TYPE_4__*,int ) ;
 int fwnet_packet_task_cache ;
 struct fwnet_peer* fwnet_peer_find_by_guid (struct fwnet_device*,int ) ;
 int fwnet_send_packet (struct fwnet_packet_task*) ;
 int get_unaligned (int *) ;
 scalar_t__ htons (int ) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 struct fwnet_packet_task* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct fwnet_packet_task*) ;
 scalar_t__ memcmp (scalar_t__,int ,int) ;
 int memcpy (struct fwnet_header*,scalar_t__,int) ;
 struct fwnet_device* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;
 int ntohs (scalar_t__) ;
 int put_unaligned (int ,int *) ;
 int put_unaligned_be16 (int,int *) ;
 int put_unaligned_be32 (int,int *) ;
 int skb_pull (struct sk_buff*,int) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t fwnet_tx(struct sk_buff *skb, struct net_device *net)
{
 struct fwnet_header hdr_buf;
 struct fwnet_device *dev = netdev_priv(net);
 __be16 proto;
 u16 dest_node;
 unsigned max_payload;
 u16 dg_size;
 u16 *datagram_label_ptr;
 struct fwnet_packet_task *ptask;
 struct fwnet_peer *peer;
 unsigned long flags;

 ptask = kmem_cache_alloc(fwnet_packet_task_cache, GFP_ATOMIC);
 if (ptask == ((void*)0))
  goto fail;

 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb)
  goto fail;





 memcpy(&hdr_buf, skb->data, sizeof(hdr_buf));
 skb_pull(skb, sizeof(hdr_buf));

 proto = hdr_buf.h_proto;
 dg_size = skb->len;


 spin_lock_irqsave(&dev->lock, flags);





 if (memcmp(hdr_buf.h_dest, net->broadcast, FWNET_ALEN) == 0
     || proto == htons(ETH_P_ARP)
     || (proto == htons(ETH_P_IP)
  && IN_MULTICAST(ntohl(ip_hdr(skb)->daddr)))) {
  max_payload = dev->broadcast_xmt_max_payload;
  datagram_label_ptr = &dev->broadcast_xmt_datagramlabel;

  ptask->fifo_addr = FWNET_NO_FIFO_ADDR;
  ptask->generation = 0;
  ptask->dest_node = IEEE1394_ALL_NODES;
  ptask->speed = SCODE_100;
 } else {
  __be64 guid = get_unaligned((__be64 *)hdr_buf.h_dest);
  u8 generation;

  peer = fwnet_peer_find_by_guid(dev, be64_to_cpu(guid));
  if (!peer || peer->fifo == FWNET_NO_FIFO_ADDR)
   goto fail_unlock;

  generation = peer->generation;
  dest_node = peer->node_id;
  max_payload = peer->max_payload;
  datagram_label_ptr = &peer->datagram_label;

  ptask->fifo_addr = peer->fifo;
  ptask->generation = generation;
  ptask->dest_node = dest_node;
  ptask->speed = peer->speed;
 }


 if (proto == htons(ETH_P_ARP)) {
  struct arphdr *arp = (struct arphdr *)skb->data;
  unsigned char *arp_ptr = (unsigned char *)(arp + 1);
  struct rfc2734_arp *arp1394 = (struct rfc2734_arp *)skb->data;
  __be32 ipaddr;

  ipaddr = get_unaligned((__be32 *)(arp_ptr + FWNET_ALEN));

  arp1394->hw_addr_len = RFC2734_HW_ADDR_LEN;
  arp1394->max_rec = dev->card->max_receive;
  arp1394->sspd = dev->card->link_speed;

  put_unaligned_be16(dev->local_fifo >> 32,
       &arp1394->fifo_hi);
  put_unaligned_be32(dev->local_fifo & 0xffffffff,
       &arp1394->fifo_lo);
  put_unaligned(ipaddr, &arp1394->sip);
 }

 ptask->hdr.w0 = 0;
 ptask->hdr.w1 = 0;
 ptask->skb = skb;
 ptask->dev = dev;


 if (dg_size <= max_payload) {
  fwnet_make_uf_hdr(&ptask->hdr, ntohs(proto));
  ptask->outstanding_pkts = 1;
  max_payload = dg_size + RFC2374_UNFRAG_HDR_SIZE;
 } else {
  u16 datagram_label;

  max_payload -= RFC2374_FRAG_OVERHEAD;
  datagram_label = (*datagram_label_ptr)++;
  fwnet_make_ff_hdr(&ptask->hdr, ntohs(proto), dg_size,
      datagram_label);
  ptask->outstanding_pkts = DIV_ROUND_UP(dg_size, max_payload);
  max_payload += RFC2374_FRAG_HDR_SIZE;
 }

 spin_unlock_irqrestore(&dev->lock, flags);

 ptask->max_payload = max_payload;
 fwnet_send_packet(ptask);

 return NETDEV_TX_OK;

 fail_unlock:
 spin_unlock_irqrestore(&dev->lock, flags);
 fail:
 if (ptask)
  kmem_cache_free(fwnet_packet_task_cache, ptask);

 if (skb != ((void*)0))
  dev_kfree_skb(skb);

 net->stats.tx_dropped++;
 net->stats.tx_errors++;
 return NETDEV_TX_OK;
}
