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
struct brcms_c_info {int /*<<< orphan*/  hw; } ;
struct brcms_bss_cfg {scalar_t__ SSID_len; int /*<<< orphan*/ * SSID; } ;

/* Variables and functions */
 int IEEE80211_MAX_SSID_LEN ; 
 int /*<<< orphan*/  M_SSID ; 
 int /*<<< orphan*/  M_SSIDLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_c_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct brcms_c_info *wlc, struct brcms_bss_cfg *cfg)
{
	u8 *ssidptr = cfg->SSID;
	u16 base = M_SSID;
	u8 ssidbuf[IEEE80211_MAX_SSID_LEN];

	/* padding the ssid with zero and copy it into shm */
	FUNC3(ssidbuf, 0, IEEE80211_MAX_SSID_LEN);
	FUNC2(ssidbuf, ssidptr, cfg->SSID_len);

	FUNC1(wlc, base, ssidbuf, IEEE80211_MAX_SSID_LEN);
	FUNC0(wlc->hw, M_SSIDLEN, (u16) cfg->SSID_len);
}