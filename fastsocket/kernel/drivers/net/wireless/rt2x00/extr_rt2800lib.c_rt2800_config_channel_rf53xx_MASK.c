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
typedef  char const u8 ;
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; } ;
struct rf_channel {char const rf1; char const rf3; int rf2; int channel; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {scalar_t__ default_power1; int default_power2; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPABILITY_BT_COEXIST ; 
 scalar_t__ POWER_BOUND ; 
 int /*<<< orphan*/  REV_RT5390F ; 
 int /*<<< orphan*/  RFCSR11_R ; 
 int /*<<< orphan*/  RFCSR1_PLL_PD ; 
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR49_TX ; 
 int /*<<< orphan*/  RFCSR50_TX ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,char const) ; 
 scalar_t__ FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	u8 rfcsr;

	FUNC2(rt2x00dev, 8, rf->rf1);
	FUNC2(rt2x00dev, 9, rf->rf3);
	FUNC1(rt2x00dev, 11, &rfcsr);
	FUNC5(&rfcsr, RFCSR11_R, rf->rf2);
	FUNC2(rt2x00dev, 11, rfcsr);

	FUNC1(rt2x00dev, 49, &rfcsr);
	if (info->default_power1 > POWER_BOUND)
		FUNC5(&rfcsr, RFCSR49_TX, POWER_BOUND);
	else
		FUNC5(&rfcsr, RFCSR49_TX, info->default_power1);
	FUNC2(rt2x00dev, 49, rfcsr);

	if (FUNC3(rt2x00dev, RT5392)) {
		FUNC1(rt2x00dev, 50, &rfcsr);
		if (info->default_power1 > POWER_BOUND)
			FUNC5(&rfcsr, RFCSR50_TX, POWER_BOUND);
		else
			FUNC5(&rfcsr, RFCSR50_TX,
					  info->default_power2);
		FUNC2(rt2x00dev, 50, rfcsr);
	}

	FUNC1(rt2x00dev, 1, &rfcsr);
	if (FUNC3(rt2x00dev, RT5392)) {
		FUNC5(&rfcsr, RFCSR1_RX1_PD, 1);
		FUNC5(&rfcsr, RFCSR1_TX1_PD, 1);
	}
	FUNC5(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
	FUNC5(&rfcsr, RFCSR1_PLL_PD, 1);
	FUNC5(&rfcsr, RFCSR1_RX0_PD, 1);
	FUNC5(&rfcsr, RFCSR1_TX0_PD, 1);
	FUNC2(rt2x00dev, 1, rfcsr);

	FUNC0(rt2x00dev);

	if (rf->channel <= 14) {
		int idx = rf->channel-1;

		if (FUNC6(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags)) {
			if (FUNC4(rt2x00dev, RT5390, REV_RT5390F)) {
				/* r55/r59 value array of channel 1~14 */
				static const char r55_bt_rev[] = {0x83, 0x83,
					0x83, 0x73, 0x73, 0x63, 0x53, 0x53,
					0x53, 0x43, 0x43, 0x43, 0x43, 0x43};
				static const char r59_bt_rev[] = {0x0e, 0x0e,
					0x0e, 0x0e, 0x0e, 0x0b, 0x0a, 0x09,
					0x07, 0x07, 0x07, 0x07, 0x07, 0x07};

				FUNC2(rt2x00dev, 55,
						   r55_bt_rev[idx]);
				FUNC2(rt2x00dev, 59,
						   r59_bt_rev[idx]);
			} else {
				static const char r59_bt[] = {0x8b, 0x8b, 0x8b,
					0x8b, 0x8b, 0x8b, 0x8b, 0x8a, 0x89,
					0x88, 0x88, 0x86, 0x85, 0x84};

				FUNC2(rt2x00dev, 59, r59_bt[idx]);
			}
		} else {
			if (FUNC4(rt2x00dev, RT5390, REV_RT5390F)) {
				static const char r55_nonbt_rev[] = {0x23, 0x23,
					0x23, 0x23, 0x13, 0x13, 0x03, 0x03,
					0x03, 0x03, 0x03, 0x03, 0x03, 0x03};
				static const char r59_nonbt_rev[] = {0x07, 0x07,
					0x07, 0x07, 0x07, 0x07, 0x07, 0x07,
					0x07, 0x07, 0x06, 0x05, 0x04, 0x04};

				FUNC2(rt2x00dev, 55,
						   r55_nonbt_rev[idx]);
				FUNC2(rt2x00dev, 59,
						   r59_nonbt_rev[idx]);
			} else if (FUNC3(rt2x00dev, RT5390) ||
				   FUNC3(rt2x00dev, RT5392)) {
				static const char r59_non_bt[] = {0x8f, 0x8f,
					0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8d,
					0x8a, 0x88, 0x88, 0x87, 0x87, 0x86};

				FUNC2(rt2x00dev, 59,
						   r59_non_bt[idx]);
			}
		}
	}
}