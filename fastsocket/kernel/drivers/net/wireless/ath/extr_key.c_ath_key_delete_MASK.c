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
struct ieee80211_key_conf {scalar_t__ hw_key_idx; scalar_t__ cipher; } ;
struct ath_common {int crypt_caps; int /*<<< orphan*/  tkip_keymap; int /*<<< orphan*/  keymap; int /*<<< orphan*/  ccmp_keymap; } ;

/* Variables and functions */
 int ATH_CRYPT_CAP_MIC_COMBINED ; 
 scalar_t__ IEEE80211_WEP_NKID ; 
 scalar_t__ WLAN_CIPHER_SUITE_TKIP ; 
 int /*<<< orphan*/  FUNC0 (struct ath_common*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct ath_common *common, struct ieee80211_key_conf *key)
{
	FUNC0(common, key->hw_key_idx);
	if (key->hw_key_idx < IEEE80211_WEP_NKID)
		return;

	FUNC1(key->hw_key_idx, common->keymap);
	FUNC1(key->hw_key_idx, common->ccmp_keymap);
	if (key->cipher != WLAN_CIPHER_SUITE_TKIP)
		return;

	FUNC1(key->hw_key_idx + 64, common->keymap);

	FUNC1(key->hw_key_idx, common->tkip_keymap);
	FUNC1(key->hw_key_idx + 64, common->tkip_keymap);

	if (!(common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED)) {
		FUNC0(common, key->hw_key_idx + 32);
		FUNC1(key->hw_key_idx + 32, common->keymap);
		FUNC1(key->hw_key_idx + 64 + 32, common->keymap);

		FUNC1(key->hw_key_idx + 32, common->tkip_keymap);
		FUNC1(key->hw_key_idx + 64 + 32, common->tkip_keymap);
	}
}