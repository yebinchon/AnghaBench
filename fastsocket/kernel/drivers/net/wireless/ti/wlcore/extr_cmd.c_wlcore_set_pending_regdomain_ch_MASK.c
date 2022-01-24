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
typedef  int /*<<< orphan*/  u16 ;
struct wl1271 {int quirks; scalar_t__ reg_ch_conf_pending; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int WL1271_MAX_CHANNELS ; 
 int WLCORE_QUIRK_REGDOMAIN_CONF ; 
 int /*<<< orphan*/  FUNC0 (int,long*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(struct wl1271 *wl, u16 channel,
				     enum ieee80211_band band)
{
	int ch_bit_idx = 0;

	if (!(wl->quirks & WLCORE_QUIRK_REGDOMAIN_CONF))
		return;

	ch_bit_idx = FUNC1(band, channel);

	if (ch_bit_idx > 0 && ch_bit_idx <= WL1271_MAX_CHANNELS)
		FUNC0(ch_bit_idx, (long *)wl->reg_ch_conf_pending);
}