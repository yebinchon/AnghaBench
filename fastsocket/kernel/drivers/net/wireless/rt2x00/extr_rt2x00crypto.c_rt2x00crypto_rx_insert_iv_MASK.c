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
struct sk_buff {scalar_t__ data; } ;
struct rxdone_entry_desc {unsigned int size; int cipher; int dev_flags; int /*<<< orphan*/  flags; int /*<<< orphan*/  icv; int /*<<< orphan*/ * iv; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,unsigned int) ; 
#define  CIPHER_AES 131 
#define  CIPHER_TKIP 130 
#define  CIPHER_WEP128 129 
#define  CIPHER_WEP64 128 
 int RXDONE_L2PAD ; 
 int /*<<< orphan*/  RX_FLAG_IV_STRIPPED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 

void FUNC6(struct sk_buff *skb,
			       unsigned int header_length,
			       struct rxdone_entry_desc *rxdesc)
{
	unsigned int payload_len = rxdesc->size - header_length;
	unsigned int align = FUNC0(skb, header_length);
	unsigned int iv_len;
	unsigned int icv_len;
	unsigned int transfer = 0;

	/*
	 * WEP64/WEP128: Provides IV & ICV
	 * TKIP: Provides IV/EIV & ICV
	 * AES: Provies IV/EIV & ICV
	 */
	switch (rxdesc->cipher) {
	case CIPHER_WEP64:
	case CIPHER_WEP128:
		iv_len = 4;
		icv_len = 4;
		break;
	case CIPHER_TKIP:
		iv_len = 8;
		icv_len = 4;
		break;
	case CIPHER_AES:
		iv_len = 8;
		icv_len = 8;
		break;
	default:
		/* Unsupport type */
		return;
	}

	/*
	 * Make room for new data. There are 2 possibilities
	 * either the alignment is already present between
	 * the 802.11 header and payload. In that case we
	 * we have to move the header less then the iv_len
	 * since we can use the already available l2pad bytes
	 * for the iv data.
	 * When the alignment must be added manually we must
	 * move the header more then iv_len since we must
	 * make room for the payload move as well.
	 */
	if (rxdesc->dev_flags & RXDONE_L2PAD) {
		FUNC3(skb, iv_len - align);
		FUNC4(skb, icv_len);

		/* Move ieee80211 header */
		FUNC2(skb->data + transfer,
			skb->data + transfer + (iv_len - align),
			header_length);
		transfer += header_length;
	} else {
		FUNC3(skb, iv_len + align);
		if (align < icv_len)
			FUNC4(skb, icv_len - align);
		else if (align > icv_len)
			FUNC5(skb, rxdesc->size + iv_len + icv_len);

		/* Move ieee80211 header */
		FUNC2(skb->data + transfer,
			skb->data + transfer + iv_len + align,
			header_length);
		transfer += header_length;
	}

	/* Copy IV/EIV data */
	FUNC1(skb->data + transfer, rxdesc->iv, iv_len);
	transfer += iv_len;

	/*
	 * Move payload for alignment purposes. Note that
	 * this is only needed when no l2 padding is present.
	 */
	if (!(rxdesc->dev_flags & RXDONE_L2PAD)) {
		FUNC2(skb->data + transfer,
			skb->data + transfer + align,
			payload_len);
	}

	/*
	 * NOTE: Always count the payload as transferred,
	 * even when alignment was set to zero. This is required
	 * for determining the correct offset for the ICV data.
	 */
	transfer += payload_len;

	/*
	 * Copy ICV data
	 * AES appends 8 bytes, we can't fill the upper
	 * 4 bytes, but mac80211 doesn't care about what
	 * we provide here anyway and strips it immediately.
	 */
	FUNC1(skb->data + transfer, &rxdesc->icv, 4);
	transfer += icv_len;

	/* IV/EIV/ICV has been inserted into frame */
	rxdesc->size = transfer;
	rxdesc->flags &= ~RX_FLAG_IV_STRIPPED;
}