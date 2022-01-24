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
struct txdb {TYPE_2__* wptr; } ;
struct txd_desc {struct pbl* pbl; } ;
struct skb_frag_struct {scalar_t__ size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
struct sk_buff {int /*<<< orphan*/  data; scalar_t__ data_len; scalar_t__ len; } ;
struct pbl {void* pa_hi; void* pa_lo; void* len; } ;
struct bdx_priv {int /*<<< orphan*/  pdev; struct txdb txdb; } ;
struct TYPE_8__ {int nr_frags; struct skb_frag_struct* frags; } ;
struct TYPE_7__ {scalar_t__ bytes; } ;
struct TYPE_5__ {struct sk_buff* skb; int /*<<< orphan*/  dma; } ;
struct TYPE_6__ {TYPE_1__ addr; scalar_t__ len; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC4 (struct txdb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (struct sk_buff*) ; 
 TYPE_3__* txd_sizes ; 

__attribute__((used)) static inline void
FUNC8(struct bdx_priv *priv, struct sk_buff *skb,
	       struct txd_desc *txdd)
{
	struct txdb *db = &priv->txdb;
	struct pbl *pbl = &txdd->pbl[0];
	int nr_frags = FUNC7(skb)->nr_frags;
	int i;

	db->wptr->len = skb->len - skb->data_len;
	db->wptr->addr.dma = FUNC6(priv->pdev, skb->data,
					    db->wptr->len, PCI_DMA_TODEVICE);
	pbl->len = FUNC0(db->wptr->len);
	pbl->pa_lo = FUNC0(FUNC3(db->wptr->addr.dma));
	pbl->pa_hi = FUNC0(FUNC2(db->wptr->addr.dma));
	FUNC1("=== pbl   len: 0x%x ================\n", pbl->len);
	FUNC1("=== pbl pa_lo: 0x%x ================\n", pbl->pa_lo);
	FUNC1("=== pbl pa_hi: 0x%x ================\n", pbl->pa_hi);
	FUNC4(db);

	for (i = 0; i < nr_frags; i++) {
		struct skb_frag_struct *frag;

		frag = &FUNC7(skb)->frags[i];
		db->wptr->len = frag->size;
		db->wptr->addr.dma =
		    FUNC5(priv->pdev, frag->page, frag->page_offset,
				 frag->size, PCI_DMA_TODEVICE);

		pbl++;
		pbl->len = FUNC0(db->wptr->len);
		pbl->pa_lo = FUNC0(FUNC3(db->wptr->addr.dma));
		pbl->pa_hi = FUNC0(FUNC2(db->wptr->addr.dma));
		FUNC4(db);
	}

	/* add skb clean up info. */
	db->wptr->len = -txd_sizes[nr_frags].bytes;
	db->wptr->addr.skb = skb;
	FUNC4(db);
}