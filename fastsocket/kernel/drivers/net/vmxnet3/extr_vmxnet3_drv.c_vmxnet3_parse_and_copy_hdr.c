
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int next2fill; } ;
struct TYPE_5__ {struct Vmxnet3_TxDataDesc* base; } ;
struct TYPE_4__ {int oversized_hdr; } ;
struct vmxnet3_tx_queue {TYPE_3__ tx_ring; TYPE_2__ data_ring; TYPE_1__ stats; } ;
struct vmxnet3_tx_ctx {unsigned int eth_ip_hdr_size; int l4_hdr_size; unsigned int copy_size; scalar_t__ ipv4; scalar_t__ mss; } ;
struct vmxnet3_adapter {int netdev; } ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int data; int len; } ;
struct iphdr {scalar_t__ protocol; } ;
struct Vmxnet3_TxDataDesc {int data; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 unsigned int VMXNET3_HDR_COPY_SIZE ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int memcpy (int ,int ,unsigned int) ;
 void* min (unsigned int,int ) ;
 int netdev_dbg (int ,char*,unsigned int,int) ;
 int pskb_may_pull (struct sk_buff*,unsigned int) ;
 unsigned int skb_checksum_start_offset (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 unsigned int skb_transport_offset (struct sk_buff*) ;
 void* tcp_hdrlen (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
vmxnet3_parse_and_copy_hdr(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
      struct vmxnet3_tx_ctx *ctx,
      struct vmxnet3_adapter *adapter)
{
 struct Vmxnet3_TxDataDesc *tdd;

 if (ctx->mss) {
  ctx->eth_ip_hdr_size = skb_transport_offset(skb);
  ctx->l4_hdr_size = tcp_hdrlen(skb);
  ctx->copy_size = ctx->eth_ip_hdr_size + ctx->l4_hdr_size;
 } else {
  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   ctx->eth_ip_hdr_size = skb_checksum_start_offset(skb);

   if (ctx->ipv4) {
    const struct iphdr *iph = ip_hdr(skb);

    if (iph->protocol == IPPROTO_TCP)
     ctx->l4_hdr_size = tcp_hdrlen(skb);
    else if (iph->protocol == IPPROTO_UDP)
     ctx->l4_hdr_size =
       sizeof(struct udphdr);
    else
     ctx->l4_hdr_size = 0;
   } else {

    ctx->l4_hdr_size = 0;
   }
   ctx->copy_size = min(ctx->eth_ip_hdr_size +
      ctx->l4_hdr_size, skb->len);
  } else {
   ctx->eth_ip_hdr_size = 0;
   ctx->l4_hdr_size = 0;

   ctx->copy_size = min((unsigned int)VMXNET3_HDR_COPY_SIZE
          , skb_headlen(skb));
  }


  if (unlikely(!pskb_may_pull(skb, ctx->copy_size)))
   goto err;
 }

 if (unlikely(ctx->copy_size > VMXNET3_HDR_COPY_SIZE)) {
  tq->stats.oversized_hdr++;
  ctx->copy_size = 0;
  return 0;
 }

 tdd = tq->data_ring.base + tq->tx_ring.next2fill;

 memcpy(tdd->data, skb->data, ctx->copy_size);
 netdev_dbg(adapter->netdev,
  "copy %u bytes to dataRing[%u]\n",
  ctx->copy_size, tq->tx_ring.next2fill);
 return 1;

err:
 return -1;
}
