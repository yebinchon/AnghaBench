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
struct txentry_desc {int /*<<< orphan*/  flags; int /*<<< orphan*/  iv_len; int /*<<< orphan*/  header_length; int /*<<< orphan*/  iv_offset; int /*<<< orphan*/  key_idx; int /*<<< orphan*/  cipher; } ;
struct sk_buff {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; } ;
struct TYPE_2__ {struct ieee80211_key_conf* hw_key; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_key_conf {int flags; int /*<<< orphan*/  iv_len; int /*<<< orphan*/  hw_key_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_HW_CRYPTO ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT_IV ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT_MMIC ; 
 int /*<<< orphan*/  ENTRY_TXD_ENCRYPT_PAIRWISE ; 
 int IEEE80211_KEY_FLAG_GENERATE_IV ; 
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_key_conf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct rt2x00_dev *rt2x00dev,
				       struct sk_buff *skb,
				       struct txentry_desc *txdesc)
{
	struct ieee80211_tx_info *tx_info = FUNC0(skb);
	struct ieee80211_key_conf *hw_key = tx_info->control.hw_key;

	if (!FUNC3(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags) || !hw_key)
		return;

	FUNC1(ENTRY_TXD_ENCRYPT, &txdesc->flags);

	txdesc->cipher = FUNC2(hw_key);

	if (hw_key->flags & IEEE80211_KEY_FLAG_PAIRWISE)
		FUNC1(ENTRY_TXD_ENCRYPT_PAIRWISE, &txdesc->flags);

	txdesc->key_idx = hw_key->hw_key_idx;
	txdesc->iv_offset = txdesc->header_length;
	txdesc->iv_len = hw_key->iv_len;

	if (!(hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_IV))
		FUNC1(ENTRY_TXD_ENCRYPT_IV, &txdesc->flags);

	if (!(hw_key->flags & IEEE80211_KEY_FLAG_GENERATE_MMIC))
		FUNC1(ENTRY_TXD_ENCRYPT_MMIC, &txdesc->flags);
}