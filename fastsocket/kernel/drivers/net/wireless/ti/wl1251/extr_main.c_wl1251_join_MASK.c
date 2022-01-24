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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int /*<<< orphan*/  rx_config; int /*<<< orphan*/  bssid; int /*<<< orphan*/  tx_mgmt_frm_mod; int /*<<< orphan*/  tx_mgmt_frm_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_BSSID_FILTER_EN ; 
 int /*<<< orphan*/  DEFAULT_HW_GEN_MODULATION_TYPE ; 
 int /*<<< orphan*/  DEFAULT_HW_GEN_TX_RATE ; 
 int /*<<< orphan*/  JOIN_EVENT_COMPLETE_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct wl1251 *wl, u8 bss_type, u8 channel,
		       u16 beacon_interval, u8 dtim_period)
{
	int ret;

	ret = FUNC1(wl, DEFAULT_HW_GEN_TX_RATE,
				     DEFAULT_HW_GEN_MODULATION_TYPE,
				     wl->tx_mgmt_frm_rate,
				     wl->tx_mgmt_frm_mod);
	if (ret < 0)
		goto out;

	/*
	 * Join command applies filters, and if we are not associated,
	 * BSSID filter must be disabled for association to work.
	 */
	if (FUNC0(wl->bssid))
		wl->rx_config &= ~CFG_BSSID_FILTER_EN;

	ret = FUNC2(wl, bss_type, channel, beacon_interval,
			      dtim_period);
	if (ret < 0)
		goto out;

	ret = FUNC3(wl, JOIN_EVENT_COMPLETE_ID, 100);
	if (ret < 0)
		FUNC4("join timeout");

out:
	return ret;
}