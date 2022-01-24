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
typedef  int u8 ;
struct TYPE_2__ {int tx_chain_num; int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;
struct rf_channel {int rf1; int rf3; } ;
struct ieee80211_conf {int dummy; } ;
struct channel_info {int default_power1; int default_power2; } ;

/* Variables and functions */
 int POWER_BOUND ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_RX2_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX2_PD ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct rt2x00_dev *rt2x00dev,
					 struct ieee80211_conf *conf,
					 struct rf_channel *rf,
					 struct channel_info *info)
{
	u8 rfcsr;

	FUNC2(rt2x00dev, 8, rf->rf1);
	FUNC2(rt2x00dev, 9, rf->rf3);

	FUNC2(rt2x00dev, 11, 0x42);
	FUNC2(rt2x00dev, 12, 0x1c);
	FUNC2(rt2x00dev, 13, 0x00);

	if (info->default_power1 > POWER_BOUND)
		FUNC2(rt2x00dev, 47, POWER_BOUND);
	else
		FUNC2(rt2x00dev, 47, info->default_power1);

	if (info->default_power2 > POWER_BOUND)
		FUNC2(rt2x00dev, 48, POWER_BOUND);
	else
		FUNC2(rt2x00dev, 48, info->default_power2);

	FUNC0(rt2x00dev);

	FUNC1(rt2x00dev, 1, &rfcsr);
	FUNC3(&rfcsr, RFCSR1_RX0_PD, 1);
	FUNC3(&rfcsr, RFCSR1_TX0_PD, 1);

	if ( rt2x00dev->default_ant.tx_chain_num == 2 )
		FUNC3(&rfcsr, RFCSR1_TX1_PD, 1);
	else
		FUNC3(&rfcsr, RFCSR1_TX1_PD, 0);

	if ( rt2x00dev->default_ant.rx_chain_num == 2 )
		FUNC3(&rfcsr, RFCSR1_RX1_PD, 1);
	else
		FUNC3(&rfcsr, RFCSR1_RX1_PD, 0);

	FUNC3(&rfcsr, RFCSR1_RX2_PD, 0);
	FUNC3(&rfcsr, RFCSR1_TX2_PD, 0);

	FUNC2(rt2x00dev, 1, rfcsr);

	FUNC2(rt2x00dev, 31, 80);
}