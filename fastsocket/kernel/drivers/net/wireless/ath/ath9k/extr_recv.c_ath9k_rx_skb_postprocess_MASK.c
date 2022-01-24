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
typedef  int u8 ;
struct sk_buff {int* data; int len; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct ath_rx_status {int rs_keyix; } ;
struct ath_hw {scalar_t__ sw_mgmt_crypto; } ;
struct ath_common {int /*<<< orphan*/  keymap; struct ath_hw* ah; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ATH9K_RXKEYIX_INVALID ; 
 int FCS_LEN ; 
 int RX_FLAG_DECRYPTED ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ath_common *common,
				     struct sk_buff *skb,
				     struct ath_rx_status *rx_stats,
				     struct ieee80211_rx_status *rxs,
				     bool decrypt_error)
{
	struct ath_hw *ah = common->ah;
	struct ieee80211_hdr *hdr;
	int hdrlen, padpos, padsize;
	u8 keyix;
	__le16 fc;

	/* see if any padding is done by the hw and remove it */
	hdr = (struct ieee80211_hdr *) skb->data;
	hdrlen = FUNC0(skb);
	fc = hdr->frame_control;
	padpos = FUNC2(fc);

	/* The MAC header is padded to have 32-bit boundary if the
	 * packet payload is non-zero. The general calculation for
	 * padsize would take into account odd header lengths:
	 * padsize = (4 - padpos % 4) % 4; However, since only
	 * even-length headers are used, padding can only be 0 or 2
	 * bytes and we can optimize this a bit. In addition, we must
	 * not try to remove padding from short control frames that do
	 * not have payload. */
	padsize = padpos & 3;
	if (padsize && skb->len>=padpos+padsize+FCS_LEN) {
		FUNC4(*(skb->data + padsize), skb->data, padpos);
		FUNC5(skb, padsize);
	}

	keyix = rx_stats->rs_keyix;

	if (!(keyix == ATH9K_RXKEYIX_INVALID) && !decrypt_error &&
	    FUNC1(fc)) {
		rxs->flag |= RX_FLAG_DECRYPTED;
	} else if (FUNC1(fc)
		   && !decrypt_error && skb->len >= hdrlen + 4) {
		keyix = skb->data[hdrlen + 3] >> 6;

		if (FUNC6(keyix, common->keymap))
			rxs->flag |= RX_FLAG_DECRYPTED;
	}
	if (ah->sw_mgmt_crypto &&
	    (rxs->flag & RX_FLAG_DECRYPTED) &&
	    FUNC3(fc))
		/* Use software decrypt for management frames. */
		rxs->flag &= ~RX_FLAG_DECRYPTED;
}