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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  TSF_TIMER_DW0 ; 
 int /*<<< orphan*/  TSF_TIMER_DW0_LOW_WORD ; 
 int /*<<< orphan*/  TSF_TIMER_DW1 ; 
 int /*<<< orphan*/  TSF_TIMER_DW1_HIGH_WORD ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

u64 FUNC2(struct ieee80211_hw *hw, struct ieee80211_vif *vif)
{
	struct rt2x00_dev *rt2x00dev = hw->priv;
	u64 tsf;
	u32 reg;

	FUNC0(rt2x00dev, TSF_TIMER_DW1, &reg);
	tsf = (u64) FUNC1(reg, TSF_TIMER_DW1_HIGH_WORD) << 32;
	FUNC0(rt2x00dev, TSF_TIMER_DW0, &reg);
	tsf |= FUNC1(reg, TSF_TIMER_DW0_LOW_WORD);

	return tsf;
}