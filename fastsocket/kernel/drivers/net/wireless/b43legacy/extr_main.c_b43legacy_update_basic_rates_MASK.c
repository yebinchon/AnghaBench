#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ieee80211_supported_band {int n_bitrates; struct ieee80211_rate* bitrates; } ;
struct ieee80211_rate {int /*<<< orphan*/  hw_value; int /*<<< orphan*/  bitrate; } ;
struct b43legacy_wldev {TYPE_3__* wl; } ;
struct TYPE_6__ {TYPE_2__* hw; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {struct ieee80211_supported_band** bands; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int B43legacy_SHM_SH_CCKBASIC ; 
 int B43legacy_SHM_SH_CCKDIRECT ; 
 int B43legacy_SHM_SH_OFDMBASIC ; 
 int B43legacy_SHM_SH_OFDMDIRECT ; 
 size_t IEEE80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,int) ; 
 struct ieee80211_rate* FUNC5 (struct ieee80211_supported_band*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct b43legacy_wldev *dev, u32 brates)
{
	struct ieee80211_supported_band *sband =
		dev->wl->hw->wiphy->bands[IEEE80211_BAND_2GHZ];
	struct ieee80211_rate *rate;
	int i;
	u16 basic, direct, offset, basic_offset, rateptr;

	for (i = 0; i < sband->n_bitrates; i++) {
		rate = &sband->bitrates[i];

		if (FUNC0(rate->hw_value)) {
			direct = B43legacy_SHM_SH_CCKDIRECT;
			basic = B43legacy_SHM_SH_CCKBASIC;
			offset = FUNC1(rate->hw_value);
			offset &= 0xF;
		} else {
			direct = B43legacy_SHM_SH_OFDMDIRECT;
			basic = B43legacy_SHM_SH_OFDMBASIC;
			offset = FUNC2(rate->hw_value);
			offset &= 0xF;
		}

		rate = FUNC5(sband, brates, rate->bitrate);

		if (FUNC0(rate->hw_value)) {
			basic_offset = FUNC1(rate->hw_value);
			basic_offset &= 0xF;
		} else {
			basic_offset = FUNC2(rate->hw_value);
			basic_offset &= 0xF;
		}

		/*
		 * Get the pointer that we need to point to
		 * from the direct map
		 */
		rateptr = FUNC3(dev, B43legacy_SHM_SHARED,
					       direct + 2 * basic_offset);
		/* and write it to the basic map */
		FUNC4(dev, B43legacy_SHM_SHARED,
				      basic + 2 * offset, rateptr);
	}
}