#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ieee80211_rate {int flags; int /*<<< orphan*/  hw_value; } ;
struct ath5k_hw {TYPE_1__* sbands; scalar_t__ ah_ack_bitrate_high; } ;
struct TYPE_2__ {unsigned int n_bitrates; struct ieee80211_rate* bitrates; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int AR5K_SET_SHORT_PREAMBLE ; 
 size_t IEEE80211_BAND_2GHZ ; 
 int IEEE80211_RATE_SHORT_PREAMBLE ; 
 size_t* ack_rates_high ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,size_t,int,struct ieee80211_rate*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC3(struct ath5k_hw *ah)
{
	struct ieee80211_rate *rate;
	unsigned int i;
	/* 802.11g covers both OFDM and CCK */
	u8 band = IEEE80211_BAND_2GHZ;

	/* Write rate duration table */
	for (i = 0; i < ah->sbands[band].n_bitrates; i++) {
		u32 reg;
		u16 tx_time;

		if (ah->ah_ack_bitrate_high)
			rate = &ah->sbands[band].bitrates[ack_rates_high[i]];
		/* CCK -> 1Mb */
		else if (i < 4)
			rate = &ah->sbands[band].bitrates[0];
		/* OFDM -> 6Mb */
		else
			rate = &ah->sbands[band].bitrates[4];

		/* Set ACK timeout */
		reg = FUNC0(rate->hw_value);

		/* An ACK frame consists of 10 bytes. If you add the FCS,
		 * which ieee80211_generic_frame_duration() adds,
		 * its 14 bytes. Note we use the control rate and not the
		 * actual rate for this rate. See mac80211 tx.c
		 * ieee80211_duration() for a brief description of
		 * what rate we should choose to TX ACKs. */
		tx_time = FUNC1(ah, band, 10,
					rate, false);

		FUNC2(ah, tx_time, reg);

		if (!(rate->flags & IEEE80211_RATE_SHORT_PREAMBLE))
			continue;

		tx_time = FUNC1(ah, band, 10, rate, true);
		FUNC2(ah, tx_time,
			reg + (AR5K_SET_SHORT_PREAMBLE << 2));
	}
}