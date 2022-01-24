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
struct TYPE_4__ {int /*<<< orphan*/  channel; } ;
struct il_priv {int channel_count; TYPE_2__ staging; TYPE_1__* channel_info; } ;
struct il_channel_info {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_3__ {int channel; } ;

/* Variables and functions */
 int IEEE80211_BAND_5GHZ ; 
 struct il_channel_info* FUNC0 (struct il_priv*,int,int) ; 
 scalar_t__ FUNC1 (struct il_channel_info const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

u8
FUNC3(struct il_priv *il, enum ieee80211_band band)
{
	const struct il_channel_info *ch_info;
	int i;
	u8 channel = 0;
	u8 min, max;

	if (band == IEEE80211_BAND_5GHZ) {
		min = 14;
		max = il->channel_count;
	} else {
		min = 0;
		max = 14;
	}

	for (i = min; i < max; i++) {
		channel = il->channel_info[i].channel;
		if (channel == FUNC2(il->staging.channel))
			continue;

		ch_info = FUNC0(il, band, channel);
		if (FUNC1(ch_info))
			break;
	}

	return channel;
}