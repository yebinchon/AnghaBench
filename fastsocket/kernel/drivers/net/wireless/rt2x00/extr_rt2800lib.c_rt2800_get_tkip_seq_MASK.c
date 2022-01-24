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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;
struct mac_iveiv_entry {int /*<<< orphan*/ * iv; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;
typedef  int /*<<< orphan*/  iveiv_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,struct mac_iveiv_entry*,int) ; 

void FUNC3(struct ieee80211_hw *hw, u8 hw_key_idx, u32 *iv32,
			 u16 *iv16)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	struct mac_iveiv_entry iveiv_entry;
	u32 offset;

	offset = FUNC0(hw_key_idx);
	FUNC2(rt2x00dev, offset,
				      &iveiv_entry, sizeof(iveiv_entry));

	FUNC1(iv16, &iveiv_entry.iv[0], sizeof(*iv16));
	FUNC1(iv32, &iveiv_entry.iv[4], sizeof(*iv32));
}