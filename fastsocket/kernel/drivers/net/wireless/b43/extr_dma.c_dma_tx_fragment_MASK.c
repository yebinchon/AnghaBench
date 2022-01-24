#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {unsigned char* data; size_t len; } ;
struct ieee80211_tx_info {int flags; } ;
struct b43_private_tx_info {unsigned char* bouncebuffer; } ;
struct b43_dmaring {int current_slot; int used_slots; int /*<<< orphan*/  dev; int /*<<< orphan*/ * txhdr_cache; struct b43_dma_ops* ops; } ;
struct b43_dmadesc_meta {int is_last_fragment; void* dmaaddr; struct sk_buff* skb; } ;
struct b43_dmadesc_generic {int dummy; } ;
struct b43_dma_ops {int /*<<< orphan*/  (* poke_tx ) (struct b43_dmaring*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* fill_descriptor ) (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ;struct b43_dmadesc_generic* (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  B43_SHM_SHARED ; 
 int /*<<< orphan*/  B43_SHM_SH_MCASTCOOKIE ; 
 int EIO ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 int TX_SLOTS_PER_FRAME ; 
 scalar_t__ FUNC1 (struct b43_dmaring*,void*,size_t,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sk_buff*,struct ieee80211_tx_info*,int /*<<< orphan*/ ) ; 
 struct b43_private_tx_info* FUNC3 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 (unsigned char*,size_t,int) ; 
 void* FUNC9 (struct b43_dmaring*,unsigned char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (struct b43_dmadesc_meta*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct b43_dmaring*,int) ; 
 int FUNC12 (struct b43_dmaring*) ; 
 struct b43_dmadesc_generic* FUNC13 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC14 (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ; 
 struct b43_dmadesc_generic* FUNC15 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC16 (struct b43_dmaring*,struct b43_dmadesc_generic*,void*,size_t,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct b43_dmaring*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct b43_dmaring*,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 

__attribute__((used)) static int FUNC21(struct b43_dmaring *ring,
			   struct sk_buff *skb)
{
	const struct b43_dma_ops *ops = ring->ops;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct b43_private_tx_info *priv_info = FUNC3(info);
	u8 *header;
	int slot, old_top_slot, old_used_slots;
	int err;
	struct b43_dmadesc_generic *desc;
	struct b43_dmadesc_meta *meta;
	struct b43_dmadesc_meta *meta_hdr;
	u16 cookie;
	size_t hdrsize = FUNC5(ring->dev);

	/* Important note: If the number of used DMA slots per TX frame
	 * is changed here, the TX_SLOTS_PER_FRAME definition at the top of
	 * the file has to be updated, too!
	 */

	old_top_slot = ring->current_slot;
	old_used_slots = ring->used_slots;

	/* Get a slot for the header. */
	slot = FUNC12(ring);
	desc = ops->idx2desc(ring, slot, &meta_hdr);
	FUNC10(meta_hdr, 0, sizeof(*meta_hdr));

	header = &(ring->txhdr_cache[(slot / TX_SLOTS_PER_FRAME) * hdrsize]);
	cookie = FUNC6(ring, slot);
	err = FUNC2(ring->dev, header,
				 skb, info, cookie);
	if (FUNC18(err)) {
		ring->current_slot = old_top_slot;
		ring->used_slots = old_used_slots;
		return err;
	}

	meta_hdr->dmaaddr = FUNC9(ring, (unsigned char *)header,
					   hdrsize, 1);
	if (FUNC1(ring, meta_hdr->dmaaddr, hdrsize, 1)) {
		ring->current_slot = old_top_slot;
		ring->used_slots = old_used_slots;
		return -EIO;
	}
	ops->fill_descriptor(ring, desc, meta_hdr->dmaaddr,
			     hdrsize, 1, 0, 0);

	/* Get a slot for the payload. */
	slot = FUNC12(ring);
	desc = ops->idx2desc(ring, slot, &meta);
	FUNC10(meta, 0, sizeof(*meta));

	meta->skb = skb;
	meta->is_last_fragment = true;
	priv_info->bouncebuffer = NULL;

	meta->dmaaddr = FUNC9(ring, skb->data, skb->len, 1);
	/* create a bounce buffer in zone_dma on mapping failure. */
	if (FUNC1(ring, meta->dmaaddr, skb->len, 1)) {
		priv_info->bouncebuffer = FUNC8(skb->data, skb->len,
						  GFP_ATOMIC | GFP_DMA);
		if (!priv_info->bouncebuffer) {
			ring->current_slot = old_top_slot;
			ring->used_slots = old_used_slots;
			err = -ENOMEM;
			goto out_unmap_hdr;
		}

		meta->dmaaddr = FUNC9(ring, priv_info->bouncebuffer, skb->len, 1);
		if (FUNC1(ring, meta->dmaaddr, skb->len, 1)) {
			FUNC7(priv_info->bouncebuffer);
			priv_info->bouncebuffer = NULL;
			ring->current_slot = old_top_slot;
			ring->used_slots = old_used_slots;
			err = -EIO;
			goto out_unmap_hdr;
		}
	}

	ops->fill_descriptor(ring, desc, meta->dmaaddr, skb->len, 0, 1, 1);

	if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
		/* Tell the firmware about the cookie of the last
		 * mcast frame, so it can clear the more-data bit in it. */
		FUNC4(ring->dev, B43_SHM_SHARED,
				B43_SHM_SH_MCASTCOOKIE, cookie);
	}
	/* Now transfer the whole frame. */
	FUNC20();
	ops->poke_tx(ring, FUNC11(ring, slot));
	return 0;

out_unmap_hdr:
	FUNC19(ring, meta_hdr->dmaaddr,
			 hdrsize, 1);
	return err;
}