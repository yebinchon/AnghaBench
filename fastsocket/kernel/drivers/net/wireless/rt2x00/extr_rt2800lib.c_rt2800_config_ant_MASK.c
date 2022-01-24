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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  rx; } ;
struct rt2x00_dev {int /*<<< orphan*/  curr_band; int /*<<< orphan*/  cap_flags; TYPE_1__ default_ant; } ;
struct antenna_setup {int tx_chain_num; int rx_chain_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANTENNA_B ; 
 int /*<<< orphan*/  BBP1_TX_ANTENNA ; 
 int /*<<< orphan*/  BBP3_RX_ADC ; 
 int /*<<< orphan*/  BBP3_RX_ANTENNA ; 
 int /*<<< orphan*/  CAPABILITY_BT_COEXIST ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  IEEE80211_BAND_5GHZ ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3352 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct rt2x00_dev *rt2x00dev, struct antenna_setup *ant)
{
	u8 r1;
	u8 r3;
	u16 eeprom;

	FUNC0(rt2x00dev, 1, &r1);
	FUNC0(rt2x00dev, 3, &r3);

	if (FUNC6(rt2x00dev, RT3572) &&
	    FUNC8(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags))
		FUNC2(rt2x00dev);

	/*
	 * Configure the TX antenna.
	 */
	switch (ant->tx_chain_num) {
	case 1:
		FUNC7(&r1, BBP1_TX_ANTENNA, 0);
		break;
	case 2:
		if (FUNC6(rt2x00dev, RT3572) &&
		    FUNC8(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags))
			FUNC7(&r1, BBP1_TX_ANTENNA, 1);
		else
			FUNC7(&r1, BBP1_TX_ANTENNA, 2);
		break;
	case 3:
		FUNC7(&r1, BBP1_TX_ANTENNA, 0);
		break;
	}

	/*
	 * Configure the RX antenna.
	 */
	switch (ant->rx_chain_num) {
	case 1:
		if (FUNC6(rt2x00dev, RT3070) ||
		    FUNC6(rt2x00dev, RT3090) ||
		    FUNC6(rt2x00dev, RT3352) ||
		    FUNC6(rt2x00dev, RT3390)) {
			FUNC4(rt2x00dev,
					   EEPROM_NIC_CONF1, &eeprom);
			if (FUNC5(eeprom,
						EEPROM_NIC_CONF1_ANT_DIVERSITY))
				FUNC3(rt2x00dev,
						rt2x00dev->default_ant.rx);
		}
		FUNC7(&r3, BBP3_RX_ANTENNA, 0);
		break;
	case 2:
		if (FUNC6(rt2x00dev, RT3572) &&
		    FUNC8(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags)) {
			FUNC7(&r3, BBP3_RX_ADC, 1);
			FUNC7(&r3, BBP3_RX_ANTENNA,
				rt2x00dev->curr_band == IEEE80211_BAND_5GHZ);
			FUNC3(rt2x00dev, ANTENNA_B);
		} else {
			FUNC7(&r3, BBP3_RX_ANTENNA, 1);
		}
		break;
	case 3:
		FUNC7(&r3, BBP3_RX_ANTENNA, 2);
		break;
	}

	FUNC1(rt2x00dev, 3, r3);
	FUNC1(rt2x00dev, 1, r1);
}