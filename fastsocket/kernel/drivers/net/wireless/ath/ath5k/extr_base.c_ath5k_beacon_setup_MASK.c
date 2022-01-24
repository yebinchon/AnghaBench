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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee80211_tx_info {int dummy; } ;
struct TYPE_3__ {int txp_requested; } ;
struct ath5k_hw {int ah_tx_ant; scalar_t__ opmode; scalar_t__ ah_ant_mode; int bsent; int (* ah_setup_tx_desc ) (struct ath5k_hw*,struct ath5k_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  hw; TYPE_1__ ah_txpower; } ;
struct ath5k_desc {scalar_t__ ds_data; scalar_t__ ds_link; } ;
struct ath5k_buf {scalar_t__ skbaddr; scalar_t__ daddr; struct ath5k_desc* desc; struct sk_buff* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 scalar_t__ AR5K_ANTMODE_SECTOR_AP ; 
 int /*<<< orphan*/  AR5K_PKT_TYPE_BEACON ; 
 int /*<<< orphan*/  AR5K_TXDESC_NOACK ; 
 int /*<<< orphan*/  AR5K_TXDESC_VEOL ; 
 int /*<<< orphan*/  AR5K_TXKEYIX_INVALID ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_BEACON ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,char*) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EIO ; 
 struct ieee80211_tx_info* FUNC2 (struct sk_buff*) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ FUNC3 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 int FUNC10 (struct ath5k_hw*,struct ath5k_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
	struct sk_buff *skb = bf->skb;
	struct	ieee80211_tx_info *info = FUNC2(skb);
	struct ath5k_desc *ds;
	int ret = 0;
	u8 antenna;
	u32 flags;
	const int padsize = 0;

	bf->skbaddr = FUNC5(ah->dev, skb->data, skb->len,
			DMA_TO_DEVICE);
	FUNC0(ah, ATH5K_DEBUG_BEACON, "skb %p [data %p len %u] "
			"skbaddr %llx\n", skb, skb->data, skb->len,
			(unsigned long long)bf->skbaddr);

	if (FUNC6(ah->dev, bf->skbaddr)) {
		FUNC1(ah, "beacon DMA mapping failed\n");
		FUNC4(skb);
		bf->skb = NULL;
		return -EIO;
	}

	ds = bf->desc;
	antenna = ah->ah_tx_ant;

	flags = AR5K_TXDESC_NOACK;
	if (ah->opmode == NL80211_IFTYPE_ADHOC && FUNC3(ah)) {
		ds->ds_link = bf->daddr;	/* self-linked */
		flags |= AR5K_TXDESC_VEOL;
	} else
		ds->ds_link = 0;

	/*
	 * If we use multiple antennas on AP and use
	 * the Sectored AP scenario, switch antenna every
	 * 4 beacons to make sure everybody hears our AP.
	 * When a client tries to associate, hw will keep
	 * track of the tx antenna to be used for this client
	 * automatically, based on ACKed packets.
	 *
	 * Note: AP still listens and transmits RTS on the
	 * default antenna which is supposed to be an omni.
	 *
	 * Note2: On sectored scenarios it's possible to have
	 * multiple antennas (1 omni -- the default -- and 14
	 * sectors), so if we choose to actually support this
	 * mode, we need to allow the user to set how many antennas
	 * we have and tweak the code below to send beacons
	 * on all of them.
	 */
	if (ah->ah_ant_mode == AR5K_ANTMODE_SECTOR_AP)
		antenna = ah->bsent & 4 ? 2 : 1;


	/* FIXME: If we are in g mode and rate is a CCK rate
	 * subtract ah->ah_txpower.txp_cck_ofdm_pwr_delta
	 * from tx power (value is in dB units already) */
	ds->ds_data = bf->skbaddr;
	ret = ah->ah_setup_tx_desc(ah, ds, skb->len,
			FUNC8(skb), padsize,
			AR5K_PKT_TYPE_BEACON,
			(ah->ah_txpower.txp_requested * 2),
			FUNC9(ah->hw, info)->hw_value,
			1, AR5K_TXKEYIX_INVALID,
			antenna, flags, 0, 0);
	if (ret)
		goto err_unmap;

	return 0;
err_unmap:
	FUNC7(ah->dev, bf->skbaddr, skb->len, DMA_TO_DEVICE);
	return ret;
}