#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vlan_group {int dummy; } ;
struct skb_frag_struct {int page_offset; } ;
struct sk_buff {int len; int data_len; int truesize; int /*<<< orphan*/  ip_summed; } ;
struct sge_qset {int nomem; int /*<<< orphan*/  napi; struct cpl_rx_pkt* lro_va; int /*<<< orphan*/ * port_stats; int /*<<< orphan*/  netdev; } ;
struct TYPE_5__ {scalar_t__ page; } ;
struct sge_fl {size_t cidx; int /*<<< orphan*/  alloc_size; TYPE_1__ pg_chunk; scalar_t__ buf_size; int /*<<< orphan*/  credits; struct rx_sw_desc* sdesc; } ;
struct TYPE_6__ {scalar_t__ page; int offset; struct cpl_rx_pkt* va; int /*<<< orphan*/  mapping; int /*<<< orphan*/ * p_cnt; } ;
struct rx_sw_desc {TYPE_2__ pg_chunk; } ;
struct port_info {int rx_offload; size_t first_qset; struct vlan_group* vlan_grp; } ;
struct cpl_rx_pkt {scalar_t__ csum; int /*<<< orphan*/  vlan; int /*<<< orphan*/  vlan_valid; scalar_t__ csum_valid; } ;
struct TYPE_7__ {struct sge_qset* qs; } ;
struct adapter {TYPE_3__ sge; int /*<<< orphan*/  pdev; } ;
struct TYPE_8__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ SGE_PG_RSVD ; 
 size_t SGE_PSTAT_RX_CSUM_GOOD ; 
 int T3_RX_CSUM ; 
 int /*<<< orphan*/  FUNC0 (struct skb_frag_struct*,scalar_t__) ; 
 int /*<<< orphan*/  dma_addr ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct port_info* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rx_sw_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct skb_frag_struct*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 TYPE_4__* FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct vlan_group*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct adapter *adap, struct sge_qset *qs,
			 struct sge_fl *fl, int len, int complete)
{
	struct rx_sw_desc *sd = &fl->sdesc[fl->cidx];
	struct port_info *pi = FUNC5(qs->netdev);
	struct sk_buff *skb = NULL;
	struct cpl_rx_pkt *cpl;
	struct skb_frag_struct *rx_frag;
	int nr_frags;
	int offset = 0;

	if (!qs->nomem) {
		skb = FUNC3(&qs->napi);
		qs->nomem = !skb;
	}

	fl->credits--;

	FUNC7(adap->pdev,
				    FUNC8(sd, dma_addr),
				    fl->buf_size - SGE_PG_RSVD,
				    PCI_DMA_FROMDEVICE);

	(*sd->pg_chunk.p_cnt)--;
	if (!*sd->pg_chunk.p_cnt && sd->pg_chunk.page != fl->pg_chunk.page)
		FUNC9(adap->pdev,
			       sd->pg_chunk.mapping,
			       fl->alloc_size,
			       PCI_DMA_FROMDEVICE);

	if (!skb) {
		FUNC10(sd->pg_chunk.page);
		if (complete)
			qs->nomem = 0;
		return;
	}

	rx_frag = FUNC13(skb)->frags;
	nr_frags = FUNC13(skb)->nr_frags;

	if (!nr_frags) {
		offset = 2 + sizeof(struct cpl_rx_pkt);
		cpl = qs->lro_va = sd->pg_chunk.va + 2;

		if ((pi->rx_offload & T3_RX_CSUM) &&
		     cpl->csum_valid && cpl->csum == FUNC1(0xffff)) {
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			qs->port_stats[SGE_PSTAT_RX_CSUM_GOOD]++;
		} else
			skb->ip_summed = CHECKSUM_NONE;
	} else
		cpl = qs->lro_va;

	len -= offset;

	rx_frag += nr_frags;
	FUNC0(rx_frag, sd->pg_chunk.page);
	rx_frag->page_offset = sd->pg_chunk.offset + offset;
	FUNC11(rx_frag, len);

	skb->len += len;
	skb->data_len += len;
	skb->truesize += len;
	FUNC13(skb)->nr_frags++;

	if (!complete)
		return;

	FUNC12(skb, qs - &adap->sge.qs[pi->first_qset]);

	if (FUNC14(cpl->vlan_valid)) {
		struct vlan_group *grp = pi->vlan_grp;

		if (FUNC2(grp != NULL)) {
			FUNC15(&qs->napi, grp, FUNC6(cpl->vlan));
			return;
		}
	}
	FUNC4(&qs->napi);
}