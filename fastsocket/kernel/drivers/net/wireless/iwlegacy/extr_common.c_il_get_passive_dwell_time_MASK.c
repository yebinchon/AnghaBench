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
typedef  int u16 ;
struct il_priv {TYPE_2__* vif; } ;
struct ieee80211_vif {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_3__ {int beacon_int; } ;
struct TYPE_4__ {TYPE_1__ bss_conf; } ;

/* Variables and functions */
 int IEEE80211_BAND_2GHZ ; 
 int IL_CHANNEL_TUNE_TIME ; 
 int IL_PASSIVE_DWELL_BASE ; 
 int IL_PASSIVE_DWELL_TIME_24 ; 
 int IL_PASSIVE_DWELL_TIME_52 ; 
 scalar_t__ FUNC0 (struct il_priv*) ; 
 int FUNC1 (int,int) ; 

u16
FUNC2(struct il_priv *il, enum ieee80211_band band,
			  struct ieee80211_vif *vif)
{
	u16 value;

	u16 passive =
	    (band ==
	     IEEE80211_BAND_2GHZ) ? IL_PASSIVE_DWELL_BASE +
	    IL_PASSIVE_DWELL_TIME_24 : IL_PASSIVE_DWELL_BASE +
	    IL_PASSIVE_DWELL_TIME_52;

	if (FUNC0(il)) {
		/*
		 * If we're associated, we clamp the maximum passive
		 * dwell time to be 98% of the smallest beacon interval
		 * (minus 2 * channel tune time)
		 */
		value = il->vif ? il->vif->bss_conf.beacon_int : 0;
		if (value > IL_PASSIVE_DWELL_BASE || !value)
			value = IL_PASSIVE_DWELL_BASE;
		value = (value * 98) / 100 - IL_CHANNEL_TUNE_TIME * 2;
		passive = FUNC1(value, passive);
	}

	return passive;
}