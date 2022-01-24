#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ hlen; int msscof; int ti; int /*<<< orphan*/  addr; int /*<<< orphan*/  tci; scalar_t__ om; } ;
union Vmxnet3_GenericDesc {void** dword; TYPE_4__ txd; } ;
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int /*<<< orphan*/  drop_total; int /*<<< orphan*/  drop_oversized_hdr; int /*<<< orphan*/  drop_hdr_inspect_err; int /*<<< orphan*/  tx_ring_full; int /*<<< orphan*/  linearized; int /*<<< orphan*/  drop_too_many_frags; int /*<<< orphan*/  copy_skb_header; int /*<<< orphan*/  drop_tso; } ;
struct TYPE_12__ {int /*<<< orphan*/  next2fill; union Vmxnet3_GenericDesc* base; int /*<<< orphan*/  next2comp; } ;
struct vmxnet3_tx_queue {int qid; TYPE_1__ stats; int /*<<< orphan*/  tx_lock; TYPE_5__ tx_ring; TYPE_3__* shared; } ;
struct vmxnet3_tx_ctx {int ipv4; int mss; scalar_t__ copy_size; scalar_t__ eth_ip_hdr_size; scalar_t__ l4_hdr_size; union Vmxnet3_GenericDesc* sop_txd; TYPE_2__* eop_txd; } ;
struct vmxnet3_adapter {TYPE_7__* netdev; int /*<<< orphan*/  pdev; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ ip_summed; scalar_t__ csum_offset; int len; } ;
struct net_device {int dummy; } ;
struct Vmxnet3_TxDesc {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int gso_size; } ;
struct TYPE_10__ {void* txNumDeferred; void* txThreshold; } ;
struct TYPE_9__ {void** dword; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vmxnet3_adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (void**,int) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*,char*,scalar_t__,int /*<<< orphan*/ ,int,...) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 TYPE_6__* FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC21 (struct Vmxnet3_TxDesc*,struct Vmxnet3_TxDesc*) ; 
 scalar_t__ FUNC22 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,struct vmxnet3_tx_ctx*,struct vmxnet3_tx_queue*,int /*<<< orphan*/ ,struct vmxnet3_adapter*) ; 
 int FUNC24 (struct sk_buff*,struct vmxnet3_tx_queue*,struct vmxnet3_tx_ctx*,struct vmxnet3_adapter*) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,struct vmxnet3_tx_ctx*) ; 
 int /*<<< orphan*/  FUNC26 (struct vmxnet3_tx_queue*,struct vmxnet3_adapter*) ; 

__attribute__((used)) static int
FUNC27(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
		struct vmxnet3_adapter *adapter, struct net_device *netdev)
{
	int ret;
	u32 count;
	unsigned long flags;
	struct vmxnet3_tx_ctx ctx;
	union Vmxnet3_GenericDesc *gdesc;
#ifdef __BIG_ENDIAN_BITFIELD
	/* Use temporary descriptor to avoid touching bits multiple times */
	union Vmxnet3_GenericDesc tempTxDesc;
#endif

	count = FUNC17(skb);

	ctx.ipv4 = (skb->protocol == FUNC3(ETH_P_IP));

	ctx.mss = FUNC14(skb)->gso_size;
	if (ctx.mss) {
		if (FUNC11(skb)) {
			if (FUNC18(FUNC10(skb, 0, 0,
						      GFP_ATOMIC) != 0)) {
				tq->stats.drop_tso++;
				goto drop_pkt;
			}
			tq->stats.copy_skb_header++;
		}
		FUNC25(skb, &ctx);
	} else {
		if (FUNC18(count > VMXNET3_MAX_TXD_PER_PKT)) {

			/* non-tso pkts must not use more than
			 * VMXNET3_MAX_TXD_PER_PKT entries
			 */
			if (FUNC13(skb) != 0) {
				tq->stats.drop_too_many_frags++;
				goto drop_pkt;
			}
			tq->stats.linearized++;

			/* recalculate the # of descriptors to use */
			count = FUNC1(FUNC12(skb)) + 1;
		}
	}

	FUNC15(&tq->tx_lock, flags);

	if (count > FUNC22(&tq->tx_ring)) {
		tq->stats.tx_ring_full++;
		FUNC9(adapter->netdev,
			"tx queue stopped on %s, next2comp %u"
			" next2fill %u\n", adapter->netdev->name,
			tq->tx_ring.next2comp, tq->tx_ring.next2fill);

		FUNC26(tq, adapter);
		FUNC16(&tq->tx_lock, flags);
		return NETDEV_TX_BUSY;
	}


	ret = FUNC24(skb, tq, &ctx, adapter);
	if (ret >= 0) {
		FUNC0(ret <= 0 && ctx.copy_size != 0);
		/* hdrs parsed, check against other limits */
		if (ctx.mss) {
			if (FUNC18(ctx.eth_ip_hdr_size + ctx.l4_hdr_size >
				     VMXNET3_MAX_TX_BUF_SIZE)) {
				goto hdr_too_big;
			}
		} else {
			if (skb->ip_summed == CHECKSUM_PARTIAL) {
				if (FUNC18(ctx.eth_ip_hdr_size +
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

	/* fill tx descs related to addr & len */
	FUNC23(skb, &ctx, tq, adapter->pdev, adapter);

	/* setup the EOP desc */
	ctx.eop_txd->dword[3] = FUNC4(VMXNET3_TXD_CQ | VMXNET3_TXD_EOP);

	/* setup the SOP desc */
#ifdef __BIG_ENDIAN_BITFIELD
	gdesc = &tempTxDesc;
	gdesc->dword[2] = ctx.sop_txd->dword[2];
	gdesc->dword[3] = ctx.sop_txd->dword[3];
#else
	gdesc = ctx.sop_txd;
#endif
	if (ctx.mss) {
		gdesc->txd.hlen = ctx.eth_ip_hdr_size + ctx.l4_hdr_size;
		gdesc->txd.om = VMXNET3_OM_TSO;
		gdesc->txd.msscof = ctx.mss;
		FUNC6(&tq->shared->txNumDeferred, (skb->len -
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
		FUNC6(&tq->shared->txNumDeferred, 1);
	}

	if (FUNC20(skb)) {
		gdesc->txd.ti = 1;
		gdesc->txd.tci = FUNC19(skb);
	}

	/* finally flips the GEN bit of the SOP desc. */
	gdesc->dword[2] = FUNC4(FUNC7(gdesc->dword[2]) ^
						  VMXNET3_TXD_GEN);
#ifdef __BIG_ENDIAN_BITFIELD
	/* Finished updating in bitfields of Tx Desc, so write them in original
	 * place.
	 */
	vmxnet3_TxDescToLe((struct Vmxnet3_TxDesc *)gdesc,
			   (struct Vmxnet3_TxDesc *)ctx.sop_txd);
	gdesc = ctx.sop_txd;
#endif
	FUNC9(adapter->netdev,
		"txd[%u]: SOP 0x%Lx 0x%x 0x%x\n",
		(u32)(ctx.sop_txd -
		tq->tx_ring.base), FUNC8(gdesc->txd.addr),
		FUNC7(gdesc->dword[2]), FUNC7(gdesc->dword[3]));

	FUNC16(&tq->tx_lock, flags);

	if (FUNC7(tq->shared->txNumDeferred) >=
					FUNC7(tq->shared->txThreshold)) {
		tq->shared->txNumDeferred = 0;
		FUNC2(adapter,
				       VMXNET3_REG_TXPROD + tq->qid * 8,
				       tq->tx_ring.next2fill);
	}

	return NETDEV_TX_OK;

hdr_too_big:
	tq->stats.drop_oversized_hdr++;
unlock_drop_pkt:
	FUNC16(&tq->tx_lock, flags);
drop_pkt:
	tq->stats.drop_total++;
	FUNC5(skb);
	return NETDEV_TX_OK;
}