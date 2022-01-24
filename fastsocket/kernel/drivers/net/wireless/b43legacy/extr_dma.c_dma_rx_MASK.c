#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ data; } ;
struct b43legacy_rxhdr_fw3 {int /*<<< orphan*/  frame_len; } ;
struct b43legacy_hwtxstatus {scalar_t__ cookie; } ;
struct b43legacy_dmaring {scalar_t__ rx_buffersize; int index; scalar_t__ frameoffset; TYPE_1__* dev; } ;
struct b43legacy_dmadesc_meta {int /*<<< orphan*/  dmaaddr; struct sk_buff* skb; } ;
struct b43legacy_dmadesc32 {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct b43legacy_hwtxstatus*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*,struct b43legacy_rxhdr_fw3*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct b43legacy_dmaring*,int) ; 
 struct b43legacy_dmadesc32* FUNC7 (struct b43legacy_dmaring*,int,struct b43legacy_dmadesc_meta**) ; 
 int FUNC8 (struct b43legacy_dmaring*,struct b43legacy_dmadesc32*,struct b43legacy_dmadesc_meta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_dmaring*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct b43legacy_dmaring*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct b43legacy_dmaring*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct b43legacy_dmaring *ring,
		   int *slot)
{
	struct b43legacy_dmadesc32 *desc;
	struct b43legacy_dmadesc_meta *meta;
	struct b43legacy_rxhdr_fw3 *rxhdr;
	struct sk_buff *skb;
	u16 len;
	int err;
	dma_addr_t dmaaddr;

	desc = FUNC7(ring, *slot, &meta);

	FUNC11(ring, meta->dmaaddr, ring->rx_buffersize);
	skb = meta->skb;

	if (ring->index == 3) {
		/* We received an xmit status. */
		struct b43legacy_hwtxstatus *hw =
				(struct b43legacy_hwtxstatus *)skb->data;
		int i = 0;

		while (hw->cookie == 0) {
			if (i > 100)
				break;
			i++;
			FUNC13(2);
			FUNC4();
		}
		FUNC0(ring->dev, hw);
		/* recycle the descriptor buffer. */
		FUNC12(ring, meta->dmaaddr,
					   ring->rx_buffersize);

		return;
	}
	rxhdr = (struct b43legacy_rxhdr_fw3 *)skb->data;
	len = FUNC5(rxhdr->frame_len);
	if (len == 0) {
		int i = 0;

		do {
			FUNC13(2);
			FUNC4();
			len = FUNC5(rxhdr->frame_len);
		} while (len == 0 && i++ < 5);
		if (FUNC14(len == 0)) {
			/* recycle the descriptor buffer. */
			FUNC12(ring, meta->dmaaddr,
						   ring->rx_buffersize);
			goto drop;
		}
	}
	if (FUNC14(len > ring->rx_buffersize)) {
		/* The data did not fit into one descriptor buffer
		 * and is split over multiple buffers.
		 * This should never happen, as we try to allocate buffers
		 * big enough. So simply ignore this packet.
		 */
		int cnt = 0;
		s32 tmp = len;

		while (1) {
			desc = FUNC7(ring, *slot, &meta);
			/* recycle the descriptor buffer. */
			FUNC12(ring, meta->dmaaddr,
						   ring->rx_buffersize);
			*slot = FUNC6(ring, *slot);
			cnt++;
			tmp -= ring->rx_buffersize;
			if (tmp <= 0)
				break;
		}
		FUNC3(ring->dev->wl, "DMA RX buffer too small "
		       "(len: %u, buffer: %u, nr-dropped: %d)\n",
		       len, ring->rx_buffersize, cnt);
		goto drop;
	}

	dmaaddr = meta->dmaaddr;
	err = FUNC8(ring, desc, meta, GFP_ATOMIC);
	if (FUNC14(err)) {
		FUNC2(ring->dev->wl, "DMA RX: setup_rx_descbuffer()"
			     " failed\n");
		FUNC12(ring, dmaaddr,
					   ring->rx_buffersize);
		goto drop;
	}

	FUNC15(ring, dmaaddr, ring->rx_buffersize, 0);
	FUNC10(skb, len + ring->frameoffset);
	FUNC9(skb, ring->frameoffset);

	FUNC1(ring->dev, skb, rxhdr);
drop:
	return;
}