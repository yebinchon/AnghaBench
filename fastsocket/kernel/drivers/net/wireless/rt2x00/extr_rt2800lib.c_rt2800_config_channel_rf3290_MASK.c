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
struct rt2x00_dev {int dummy; } ;
struct rf_channel {scalar_t__ rf2; int channel; int /*<<< orphan*/  rf3; int /*<<< orphan*/  rf1; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {scalar_t__ default_power1; } ;

/* Variables and functions */
 scalar_t__ POWER_BOUND ; 
 int /*<<< orphan*/  RFCSR11_R ; 
 int /*<<< orphan*/  RFCSR49_TX ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	u8 rfcsr;

	FUNC3(rt2x00dev, 8, rf->rf1);
	FUNC3(rt2x00dev, 9, rf->rf3);
	FUNC2(rt2x00dev, 11, &rfcsr);
	FUNC4(&rfcsr, RFCSR11_R, rf->rf2);
	FUNC3(rt2x00dev, 11, rfcsr);

	FUNC2(rt2x00dev, 49, &rfcsr);
	if (info->default_power1 > POWER_BOUND)
		FUNC4(&rfcsr, RFCSR49_TX, POWER_BOUND);
	else
		FUNC4(&rfcsr, RFCSR49_TX, info->default_power1);
	FUNC3(rt2x00dev, 49, rfcsr);

	FUNC0(rt2x00dev);

	if (rf->channel <= 14) {
		if (rf->channel == 6)
			FUNC1(rt2x00dev, 68, 0x0c);
		else
			FUNC1(rt2x00dev, 68, 0x0b);

		if (rf->channel >= 1 && rf->channel <= 6)
			FUNC1(rt2x00dev, 59, 0x0f);
		else if (rf->channel >= 7 && rf->channel <= 11)
			FUNC1(rt2x00dev, 59, 0x0e);
		else if (rf->channel >= 12 && rf->channel <= 14)
			FUNC1(rt2x00dev, 59, 0x0d);
	}
}