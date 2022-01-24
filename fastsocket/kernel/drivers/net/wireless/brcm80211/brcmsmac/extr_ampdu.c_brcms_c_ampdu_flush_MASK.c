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
struct ieee80211_sta {int dummy; } ;
struct brcms_c_info {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_cb_fn_ampdu ; 

void FUNC1(struct brcms_c_info *wlc,
		     struct ieee80211_sta *sta, u16 tid)
{
	FUNC0(wlc->hw, sta, dma_cb_fn_ampdu);
}