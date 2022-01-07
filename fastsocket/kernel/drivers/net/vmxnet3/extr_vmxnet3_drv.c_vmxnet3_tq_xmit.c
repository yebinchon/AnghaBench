
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ hlen; int msscof; int ti; int addr; int tci; scalar_t__ om; } ;
union Vmxnet3_GenericDesc {void** dword; TYPE_4__ txd; } ;
typedef scalar_t__ u32 ;
struct TYPE_8__ {int drop_total; int drop_oversized_hdr; int drop_hdr_inspect_err; int tx_ring_full; int linearized; int drop_too_many_frags; int copy_skb_header; int drop_tso; } ;
struct TYPE_12__ {int next2fill; union Vmxnet3_GenericDesc* base; int next2comp; } ;
struct vmxnet3_tx_queue {int qid; TYPE_1__ stats; int tx_lock; TYPE_5__ tx_ring; TYPE_3__* shared; } ;
struct vmxnet3_tx_ctx {int ipv4; int mss; scalar_t__ copy_size; scalar_t__ eth_ip_hdr_size; scalar_t__ l4_hdr_size; union Vmxnet3_GenericDesc* sop_txd; TYPE_2__* eop_txd; } ;
struct vmxnet3_adapter {TYPE_7__* netdev; int pdev; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ ip_summed; scalar_t__ csum_offset; int len; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {int gso_size; } ;
struct TYPE_10__ {void* txNumDeferred; void* txThreshold; } ;
struct TYPE_9__ {void** dword; } ;


 int BUG_ON (int) ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 scalar_t__ VMXNET3_MAX_CSUM_OFFSET ;
 scalar_t__ VMXNET3_MAX_TXD_PER_PKT ;
 scalar_t__ VMXNET3_MAX_TX_BUF_SIZE ;
 scalar_t__ VMXNET3_OM_CSUM ;
 scalar_t__ VMXNET3_OM_TSO ;
 scalar_t__ VMXNET3_REG_TXPROD ;
 int VMXNET3_TXD_CQ ;
 int VMXNET3_TXD_EOP ;
 int VMXNET3_TXD_GEN ;
 scalar_t__ VMXNET3_TXD_NEEDED (int ) ;
 int VMXNET3_WRITE_BAR0_REG (struct vmxnet3_adapter*,scalar_t__,int ) ;
 scalar_t__ cpu_to_be16 (int ) ;
 void* cpu_to_le32 (int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int le32_add_cpu (void**,int) ;
 int le32_to_cpu (void*) ;
 int le64_to_cpu (int ) ;
 int netdev_dbg (TYPE_7__*,char*,scalar_t__,int ,int,...) ;
 scalar_t__ pskb_expand_head (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ skb_header_cloned (struct sk_buff*) ;
 int skb_headlen (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 TYPE_6__* skb_shinfo (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ txd_estimate (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int vlan_tx_tag_get (struct sk_buff*) ;
 scalar_t__ vlan_tx_tag_present (struct sk_buff*) ;
 int vmxnet3_TxDescToLe (struct Vmxnet3_TxDesc*,struct Vmxnet3_TxDesc*) ;
 scalar_t__ vmxnet3_cmd_ring_desc_avail (TYPE_5__*) ;
 int vmxnet3_map_pkt (struct sk_buff*,struct vmxnet3_tx_ctx*,struct vmxnet3_tx_queue*,int ,struct vmxnet3_adapter*) ;
 int vmxnet3_parse_and_copy_hdr (struct sk_buff*,struct vmxnet3_tx_queue*,struct vmxnet3_tx_ctx*,struct vmxnet3_adapter*) ;
 int vmxnet3_prepare_tso (struct sk_buff*,struct vmxnet3_tx_ctx*) ;
 int vmxnet3_tq_stop (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ;

__attribute__((used)) static int
vmxnet3_tq_xmit(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
  struct vmxnet3_adapter *adapter, struct net_device *netdev)
{
 int ret;
 u32 count;
 unsigned long flags;
 struct vmxnet3_tx_ctx ctx;
 union Vmxnet3_GenericDesc *gdesc;





 count = txd_estimate(skb);

 ctx.ipv4 = (skb->protocol == cpu_to_be16(ETH_P_IP));

 ctx.mss = skb_shinfo(skb)->gso_size;
 if (ctx.mss) {
  if (skb_header_cloned(skb)) {
   if (unlikely(pskb_expand_head(skb, 0, 0,
            GFP_ATOMIC) != 0)) {
    tq->stats.drop_tso++;
    goto drop_pkt;
   }
   tq->stats.copy_skb_header++;
  }
  vmxnet3_prepare_tso(skb, &ctx);
 } else {
  if (unlikely(count > VMXNET3_MAX_TXD_PER_PKT)) {




   if (skb_linearize(skb) != 0) {
    tq->stats.drop_too_many_frags++;
    goto drop_pkt;
   }
   tq->stats.linearized++;


   count = VMXNET3_TXD_NEEDED(skb_headlen(skb)) + 1;
  }
 }

 spin_lock_irqsave(&tq->tx_lock, flags);

 if (count > vmxnet3_cmd_ring_desc_avail(&tq->tx_ring)) {
  tq->stats.tx_ring_full++;
  netdev_dbg(adapter->netdev,
   "tx queue stopped on %s, next2comp %u"
   " next2fill %u\n", adapter->netdev->name,
   tq->tx_ring.next2comp, tq->tx_ring.next2fill);

  vmxnet3_tq_stop(tq, adapter);
  spin_unlock_irqrestore(&tq->tx_lock, flags);
  return NETDEV_TX_BUSY;
 }


 ret = vmxnet3_parse_and_copy_hdr(skb, tq, &ctx, adapter);
 if (ret >= 0) {
  BUG_ON(ret <= 0 && ctx.copy_size != 0);

  if (ctx.mss) {
   if (unlikely(ctx.eth_ip_hdr_size + ctx.l4_hdr_size >
         VMXNET3_MAX_TX_BUF_SIZE)) {
    goto hdr_too_big;
   }
  } else {
   if (skb->ip_summed == CHECKSUM_PARTIAL) {
    if (unlikely(ctx.eth_ip_hdr_size +
          skb->csum_offset >
          VMXNET3_MAX_CSUM_OFFSET)) {
     goto hdr_too_big;
    }
   }
  }
 } else {
  tq->stats.drop_hdr_inspect_err++;
  goto unlock_drop_pkt;
 }


 vmxnet3_map_pkt(skb, &ctx, tq, adapter->pdev, adapter);


 ctx.eop_txd->dword[3] = cpu_to_le32(VMXNET3_TXD_CQ | VMXNET3_TXD_EOP);







 gdesc = ctx.sop_txd;

 if (ctx.mss) {
  gdesc->txd.hlen = ctx.eth_ip_hdr_size + ctx.l4_hdr_size;
  gdesc->txd.om = VMXNET3_OM_TSO;
  gdesc->txd.msscof = ctx.mss;
  le32_add_cpu(&tq->shared->txNumDeferred, (skb->len -
        gdesc->txd.hlen + ctx.mss - 1) / ctx.mss);
 } else {
  if (skb->ip_summed == CHECKSUM_PARTIAL) {
   gdesc->txd.hlen = ctx.eth_ip_hdr_size;
   gdesc->txd.om = VMXNET3_OM_CSUM;
   gdesc->txd.msscof = ctx.eth_ip_hdr_size +
         skb->csum_offset;
  } else {
   gdesc->txd.om = 0;
   gdesc->txd.msscof = 0;
  }
  le32_add_cpu(&tq->shared->txNumDeferred, 1);
 }

 if (vlan_tx_tag_present(skb)) {
  gdesc->txd.ti = 1;
  gdesc->txd.tci = vlan_tx_tag_get(skb);
 }


 gdesc->dword[2] = cpu_to_le32(le32_to_cpu(gdesc->dword[2]) ^
        VMXNET3_TXD_GEN);
 netdev_dbg(adapter->netdev,
  "txd[%u]: SOP 0x%Lx 0x%x 0x%x\n",
  (u32)(ctx.sop_txd -
  tq->tx_ring.base), le64_to_cpu(gdesc->txd.addr),
  le32_to_cpu(gdesc->dword[2]), le32_to_cpu(gdesc->dword[3]));

 spin_unlock_irqrestore(&tq->tx_lock, flags);

 if (le32_to_cpu(tq->shared->txNumDeferred) >=
     le32_to_cpu(tq->shared->txThreshold)) {
  tq->shared->txNumDeferred = 0;
  VMXNET3_WRITE_BAR0_REG(adapter,
           VMXNET3_REG_TXPROD + tq->qid * 8,
           tq->tx_ring.next2fill);
 }

 return NETDEV_TX_OK;

hdr_too_big:
 tq->stats.drop_oversized_hdr++;
unlock_drop_pkt:
 spin_unlock_irqrestore(&tq->tx_lock, flags);
drop_pkt:
 tq->stats.drop_total++;
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
