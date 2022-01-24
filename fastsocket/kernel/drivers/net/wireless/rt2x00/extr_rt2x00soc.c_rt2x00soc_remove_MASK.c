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
struct rt2x00_dev {int dummy; } ;
struct platform_device {int dummy; } ;
struct ieee80211_hw {struct rt2x00_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 

int FUNC4(struct platform_device *pdev)
{
	struct ieee80211_hw *hw = FUNC1(pdev);
	struct rt2x00_dev *rt2x00dev = hw->priv;

	/*
	 * Free all allocated data.
	 */
	FUNC2(rt2x00dev);
	FUNC3(rt2x00dev);
	FUNC0(hw);

	return 0;
}