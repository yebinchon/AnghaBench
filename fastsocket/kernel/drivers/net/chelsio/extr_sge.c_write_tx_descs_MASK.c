#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {unsigned int len; unsigned int data_len; int /*<<< orphan*/  data; } ;
struct cmdQ_e {int addr_hi; int len_gen; unsigned int flags; scalar_t__ addr_lo; } ;
struct cmdQ_ce {struct sk_buff* skb; } ;
struct cmdQ {unsigned int size; struct cmdQ_ce* centries; struct cmdQ_e* entries; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {unsigned int size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_4__ {unsigned int nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 unsigned int F_CMD_DATAVALID ; 
 unsigned int F_CMD_SOP ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 unsigned int SGE_TX_DESC_MAX_PLEN ; 
 unsigned int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  dma_len ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cmdQ_ce*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdQ_ce*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 unsigned int FUNC11 (unsigned int,struct cmdQ_e**,struct cmdQ_ce**,unsigned int*,scalar_t__*,unsigned int*,unsigned int,struct cmdQ*) ; 
 int /*<<< orphan*/  FUNC12 (struct cmdQ_e*,scalar_t__,unsigned int,unsigned int,int) ; 

__attribute__((used)) static inline void FUNC13(struct adapter *adapter, struct sk_buff *skb,
				  unsigned int pidx, unsigned int gen,
				  struct cmdQ *q)
{
	dma_addr_t mapping, desc_mapping;
	struct cmdQ_e *e, *e1;
	struct cmdQ_ce *ce;
	unsigned int i, flags, first_desc_len, desc_len,
	    nfrags = FUNC9(skb)->nr_frags;

	e = e1 = &q->entries[pidx];
	ce = &q->centries[pidx];

	mapping = FUNC6(adapter->pdev, skb->data,
				skb->len - skb->data_len, PCI_DMA_TODEVICE);

	desc_mapping = mapping;
	desc_len = skb->len - skb->data_len;

	flags = F_CMD_DATAVALID | F_CMD_SOP |
	    FUNC0(nfrags == 0 && desc_len <= SGE_TX_DESC_MAX_PLEN) |
	    FUNC2(gen);
	first_desc_len = (desc_len <= SGE_TX_DESC_MAX_PLEN) ?
	    desc_len : SGE_TX_DESC_MAX_PLEN;
	e->addr_lo = (u32)desc_mapping;
	e->addr_hi = (u64)desc_mapping >> 32;
	e->len_gen = FUNC3(first_desc_len) | FUNC1(gen);
	ce->skb = NULL;
	FUNC8(ce, dma_len, 0);

	if (PAGE_SIZE > SGE_TX_DESC_MAX_PLEN &&
	    desc_len > SGE_TX_DESC_MAX_PLEN) {
		desc_mapping += first_desc_len;
		desc_len -= first_desc_len;
		e1++;
		ce++;
		if (++pidx == q->size) {
			pidx = 0;
			gen ^= 1;
			e1 = q->entries;
			ce = q->centries;
		}
		pidx = FUNC11(pidx, &e1, &ce, &gen,
						 &desc_mapping, &desc_len,
						 nfrags, q);

		if (FUNC4(desc_len))
			FUNC12(e1, desc_mapping, desc_len, gen,
				      nfrags == 0);
	}

	ce->skb = NULL;
	FUNC7(ce, dma_addr, mapping);
	FUNC8(ce, dma_len, skb->len - skb->data_len);

	for (i = 0; nfrags--; i++) {
		skb_frag_t *frag = &FUNC9(skb)->frags[i];
		e1++;
		ce++;
		if (++pidx == q->size) {
			pidx = 0;
			gen ^= 1;
			e1 = q->entries;
			ce = q->centries;
		}

		mapping = FUNC5(adapter->pdev, frag->page,
				       frag->page_offset, frag->size,
				       PCI_DMA_TODEVICE);
		desc_mapping = mapping;
		desc_len = frag->size;

		pidx = FUNC11(pidx, &e1, &ce, &gen,
						 &desc_mapping, &desc_len,
						 nfrags, q);
		if (FUNC4(desc_len))
			FUNC12(e1, desc_mapping, desc_len, gen,
				      nfrags == 0);
		ce->skb = NULL;
		FUNC7(ce, dma_addr, mapping);
		FUNC8(ce, dma_len, frag->size);
	}
	ce->skb = skb;
	FUNC10();
	e->flags = flags;
}