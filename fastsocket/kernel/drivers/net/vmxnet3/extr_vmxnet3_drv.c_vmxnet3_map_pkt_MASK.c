#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int gen; void* addr; } ;
union Vmxnet3_GenericDesc {void** dword; TYPE_2__ txd; } ;
typedef  int u32 ;
struct TYPE_8__ {int gen; int next2fill; union Vmxnet3_GenericDesc* base; } ;
struct TYPE_6__ {scalar_t__ basePA; } ;
struct vmxnet3_tx_queue {TYPE_3__ tx_ring; struct vmxnet3_tx_buf_info* buf_info; TYPE_1__ data_ring; } ;
struct vmxnet3_tx_ctx {int copy_size; union Vmxnet3_GenericDesc* sop_txd; union Vmxnet3_GenericDesc* eop_txd; } ;
struct vmxnet3_tx_buf_info {int len; int sop_idx; struct sk_buff* skb; scalar_t__ dma_addr; int /*<<< orphan*/  map_type; } ;
struct vmxnet3_adapter {int /*<<< orphan*/  netdev; TYPE_5__* pdev; } ;
struct skb_frag_struct {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
struct pci_dev {int dummy; } ;
struct Vmxnet3_TxDataDesc {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_9__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  VMXNET3_MAP_NONE ; 
 int /*<<< orphan*/  VMXNET3_MAP_PAGE ; 
 int /*<<< orphan*/  VMXNET3_MAP_SINGLE ; 
 int VMXNET3_MAX_TX_BUF_SIZE ; 
 int VMXNET3_TXD_GEN_SHIFT ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (scalar_t__) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,void*,void*) ; 
 scalar_t__ FUNC6 (TYPE_5__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct skb_frag_struct const*,unsigned long,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct skb_frag_struct const*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_4__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC12(struct sk_buff *skb, struct vmxnet3_tx_ctx *ctx,
		struct vmxnet3_tx_queue *tq, struct pci_dev *pdev,
		struct vmxnet3_adapter *adapter)
{
	u32 dw2, len;
	unsigned long buf_offset;
	int i;
	union Vmxnet3_GenericDesc *gdesc;
	struct vmxnet3_tx_buf_info *tbi = NULL;

	FUNC0(ctx->copy_size > FUNC9(skb));

	/* use the previous gen bit for the SOP desc */
	dw2 = (tq->tx_ring.gen ^ 0x1) << VMXNET3_TXD_GEN_SHIFT;

	ctx->sop_txd = tq->tx_ring.base + tq->tx_ring.next2fill;
	gdesc = ctx->sop_txd; /* both loops below can be skipped */

	/* no need to map the buffer if headers are copied */
	if (ctx->copy_size) {
		ctx->sop_txd->txd.addr = FUNC2(tq->data_ring.basePA +
					tq->tx_ring.next2fill *
					sizeof(struct Vmxnet3_TxDataDesc));
		ctx->sop_txd->dword[2] = FUNC1(dw2 | ctx->copy_size);
		ctx->sop_txd->dword[3] = 0;

		tbi = tq->buf_info + tq->tx_ring.next2fill;
		tbi->map_type = VMXNET3_MAP_NONE;

		FUNC5(adapter->netdev,
			"txd[%u]: 0x%Lx 0x%x 0x%x\n",
			tq->tx_ring.next2fill,
			FUNC4(ctx->sop_txd->txd.addr),
			ctx->sop_txd->dword[2], ctx->sop_txd->dword[3]);
		FUNC11(&tq->tx_ring);

		/* use the right gen for non-SOP desc */
		dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;
	}

	/* linear part can use multiple tx desc if it's big */
	len = FUNC9(skb) - ctx->copy_size;
	buf_offset = ctx->copy_size;
	while (len) {
		u32 buf_size;

		if (len < VMXNET3_MAX_TX_BUF_SIZE) {
			buf_size = len;
			dw2 |= len;
		} else {
			buf_size = VMXNET3_MAX_TX_BUF_SIZE;
			/* spec says that for TxDesc.len, 0 == 2^14 */
		}

		tbi = tq->buf_info + tq->tx_ring.next2fill;
		tbi->map_type = VMXNET3_MAP_SINGLE;
		tbi->dma_addr = FUNC6(adapter->pdev,
				skb->data + buf_offset, buf_size,
				PCI_DMA_TODEVICE);

		tbi->len = buf_size;

		gdesc = tq->tx_ring.base + tq->tx_ring.next2fill;
		FUNC0(gdesc->txd.gen == tq->tx_ring.gen);

		gdesc->txd.addr = FUNC2(tbi->dma_addr);
		gdesc->dword[2] = FUNC1(dw2);
		gdesc->dword[3] = 0;

		FUNC5(adapter->netdev,
			"txd[%u]: 0x%Lx 0x%x 0x%x\n",
			tq->tx_ring.next2fill, FUNC4(gdesc->txd.addr),
			FUNC3(gdesc->dword[2]), gdesc->dword[3]);
		FUNC11(&tq->tx_ring);
		dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;

		len -= buf_size;
		buf_offset += buf_size;
	}

	for (i = 0; i < FUNC10(skb)->nr_frags; i++) {
		const struct skb_frag_struct *frag = &FUNC10(skb)->frags[i];
		u32 buf_size;

		buf_offset = 0;
		len = FUNC8(frag);
		while (len) {
			tbi = tq->buf_info + tq->tx_ring.next2fill;
			if (len < VMXNET3_MAX_TX_BUF_SIZE) {
				buf_size = len;
				dw2 |= len;
			} else {
				buf_size = VMXNET3_MAX_TX_BUF_SIZE;
				/* spec says that for TxDesc.len, 0 == 2^14 */
			}
			tbi->map_type = VMXNET3_MAP_PAGE;
			tbi->dma_addr = FUNC7(&adapter->pdev->dev, frag,
							 buf_offset, buf_size,
							 DMA_TO_DEVICE);

			tbi->len = buf_size;

			gdesc = tq->tx_ring.base + tq->tx_ring.next2fill;
			FUNC0(gdesc->txd.gen == tq->tx_ring.gen);

			gdesc->txd.addr = FUNC2(tbi->dma_addr);
			gdesc->dword[2] = FUNC1(dw2);
			gdesc->dword[3] = 0;

			FUNC5(adapter->netdev,
				"txd[%u]: 0x%llu %u %u\n",
				tq->tx_ring.next2fill, FUNC4(gdesc->txd.addr),
				FUNC3(gdesc->dword[2]), gdesc->dword[3]);
			FUNC11(&tq->tx_ring);
			dw2 = tq->tx_ring.gen << VMXNET3_TXD_GEN_SHIFT;

			len -= buf_size;
			buf_offset += buf_size;
		}
	}

	ctx->eop_txd = gdesc;

	/* set the last buf_info for the pkt */
	tbi->skb = skb;
	tbi->sop_idx = ctx->sop_txd - tq->tx_ring.base;
}