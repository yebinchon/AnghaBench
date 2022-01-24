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
typedef  scalar_t__ u16 ;
struct iwl_priv {int dummy; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 int IEEE80211_BAND_2GHZ ; 
 scalar_t__ IWL_PASSIVE_DWELL_BASE ; 
 scalar_t__ IWL_PASSIVE_DWELL_TIME_24 ; 
 scalar_t__ IWL_PASSIVE_DWELL_TIME_52 ; 
 scalar_t__ FUNC0 (struct iwl_priv*,scalar_t__) ; 

__attribute__((used)) static u16 FUNC1(struct iwl_priv *priv,
				      enum ieee80211_band band)
{
	u16 passive = (band == IEEE80211_BAND_2GHZ) ?
	    IWL_PASSIVE_DWELL_BASE + IWL_PASSIVE_DWELL_TIME_24 :
	    IWL_PASSIVE_DWELL_BASE + IWL_PASSIVE_DWELL_TIME_52;

	return FUNC0(priv, passive);
}