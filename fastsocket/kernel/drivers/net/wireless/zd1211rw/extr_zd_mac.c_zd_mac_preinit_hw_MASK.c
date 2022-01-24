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
struct zd_mac {int /*<<< orphan*/  chip; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct zd_mac* FUNC2 (struct ieee80211_hw*) ; 

int FUNC3(struct ieee80211_hw *hw)
{
	int r;
	u8 addr[ETH_ALEN];
	struct zd_mac *mac = FUNC2(hw);

	r = FUNC1(&mac->chip, addr);
	if (r)
		return r;

	FUNC0(hw, addr);

	return 0;
}