#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int next2fill; } ;
struct TYPE_5__ {struct Vmxnet3_TxDataDesc* base; } ;
struct TYPE_4__ {int /*<<< orphan*/  oversized_hdr; } ;
struct vmxnet3_tx_queue {TYPE_3__ tx_ring; TYPE_2__ data_ring; TYPE_1__ stats; } ;
struct vmxnet3_tx_ctx {unsigned int eth_ip_hdr_size; int l4_hdr_size; unsigned int copy_size; scalar_t__ ipv4; scalar_t__ mss; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; } ;
struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct iphdr {scalar_t__ protocol; } ;
struct Vmxnet3_TxDataDesc {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 scalar_t__ IPPROTO_TCP ; 
 scalar_t__ IPPROTO_UDP ; 
 unsigned int VMXNET3_HDR_COPY_SIZE ; 
 struct iphdr* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 unsigned int FUNC7 (struct sk_buff*) ; 
 void* FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, struct vmxnet3_tx_queue *tq,
			   struct vmxnet3_tx_ctx *ctx,
			   struct vmxnet3_adapter *adapter)
{
	struct Vmxnet3_TxDataDesc *tdd;

	if (ctx->mss) {	/* TSO */
		ctx->eth_ip_hdr_size = FUNC7(skb);
		ctx->l4_hdr_size = FUNC8(skb);
		ctx->copy_size = ctx->eth_ip_hdr_size + ctx->l4_hdr_size;
	} else {
		if (skb->ip_summed == CHECKSUM_PARTIAL) {
			ctx->eth_ip_hdr_size = FUNC5(skb);

			if (ctx->ipv4) {
				const struct iphdr *iph = FUNC0(skb);

				if (iph->protocol == IPPROTO_TCP)
					ctx->l4_hdr_size = FUNC8(skb);
				else if (iph->protocol == IPPROTO_UDP)
					ctx->l4_hdr_size =
							sizeof(struct udphdr);
				else
					ctx->l4_hdr_size = 0;
			} else {
				/* for simplicity, don't copy L4 headers */
				ctx->l4_hdr_size = 0;
			}
			ctx->copy_size = FUNC2(ctx->eth_ip_hdr_size +
					 ctx->l4_hdr_size, skb->len);
		} else {
			ctx->eth_ip_hdr_size = 0;
			ctx->l4_hdr_size = 0;
			/* copy as much as allowed */
			ctx->copy_size = FUNC2((unsigned int)VMXNET3_HDR_COPY_SIZE
					     , FUNC6(skb));
		}

		/* make sure headers are accessible directly */
		if (FUNC9(!FUNC4(skb, ctx->copy_size)))
			goto err;
	}

	if (FUNC9(ctx->copy_size > VMXNET3_HDR_COPY_SIZE)) {
		tq->stats.oversized_hdr++;
		ctx->copy_size = 0;
		return 0;
	}

	tdd = tq->data_ring.base + tq->tx_ring.next2fill;

	FUNC1(tdd->data, skb->data, ctx->copy_size);
	FUNC3(adapter->netdev,
		"copy %u bytes to dataRing[%u]\n",
		ctx->copy_size, tq->tx_ring.next2fill);
	return 1;

err:
	return -1;
}