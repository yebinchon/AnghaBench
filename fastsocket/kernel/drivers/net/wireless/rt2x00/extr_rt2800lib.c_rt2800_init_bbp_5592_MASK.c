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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int rx_chain_num; } ;
struct rt2x00_dev {TYPE_1__ default_ant; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP105_MLD ; 
 int /*<<< orphan*/  BBP152_RX_DEFAULT_ANT ; 
 int /*<<< orphan*/  BBP254_BIT7 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  REV_RT5592C ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct rt2x00_dev *rt2x00dev)
{
	int ant, div_mode;
	u16 eeprom;
	u8 value;

	FUNC4(rt2x00dev);

	FUNC1(rt2x00dev, 105, &value);
	FUNC9(&value, BBP105_MLD,
			  rt2x00dev->default_ant.rx_chain_num == 2);
	FUNC2(rt2x00dev, 105, value);

	FUNC0(rt2x00dev);

	FUNC2(rt2x00dev, 20, 0x06);
	FUNC2(rt2x00dev, 31, 0x08);
	FUNC2(rt2x00dev, 65, 0x2C);
	FUNC2(rt2x00dev, 68, 0xDD);
	FUNC2(rt2x00dev, 69, 0x1A);
	FUNC2(rt2x00dev, 70, 0x05);
	FUNC2(rt2x00dev, 73, 0x13);
	FUNC2(rt2x00dev, 74, 0x0F);
	FUNC2(rt2x00dev, 75, 0x4F);
	FUNC2(rt2x00dev, 76, 0x28);
	FUNC2(rt2x00dev, 77, 0x59);
	FUNC2(rt2x00dev, 84, 0x9A);
	FUNC2(rt2x00dev, 86, 0x38);
	FUNC2(rt2x00dev, 88, 0x90);
	FUNC2(rt2x00dev, 91, 0x04);
	FUNC2(rt2x00dev, 92, 0x02);
	FUNC2(rt2x00dev, 95, 0x9a);
	FUNC2(rt2x00dev, 98, 0x12);
	FUNC2(rt2x00dev, 103, 0xC0);
	FUNC2(rt2x00dev, 104, 0x92);
	/* FIXME BBP105 owerwrite */
	FUNC2(rt2x00dev, 105, 0x3C);
	FUNC2(rt2x00dev, 106, 0x35);
	FUNC2(rt2x00dev, 128, 0x12);
	FUNC2(rt2x00dev, 134, 0xD0);
	FUNC2(rt2x00dev, 135, 0xF6);
	FUNC2(rt2x00dev, 137, 0x0F);

	/* Initialize GLRT (Generalized Likehood Radio Test) */
	FUNC3(rt2x00dev);

	FUNC0(rt2x00dev);

	FUNC6(rt2x00dev, EEPROM_NIC_CONF1, &eeprom);
	div_mode = FUNC7(eeprom, EEPROM_NIC_CONF1_ANT_DIVERSITY);
	ant = (div_mode == 3) ? 1 : 0;
	FUNC1(rt2x00dev, 152, &value);
	if (ant == 0) {
		/* Main antenna */
		FUNC9(&value, BBP152_RX_DEFAULT_ANT, 1);
	} else {
		/* Auxiliary antenna */
		FUNC9(&value, BBP152_RX_DEFAULT_ANT, 0);
	}
	FUNC2(rt2x00dev, 152, value);

	if (FUNC8(rt2x00dev, RT5592, REV_RT5592C)) {
		FUNC1(rt2x00dev, 254, &value);
		FUNC9(&value, BBP254_BIT7, 1);
		FUNC2(rt2x00dev, 254, value);
	}

	FUNC5(rt2x00dev);

	FUNC2(rt2x00dev, 84, 0x19);
	if (FUNC8(rt2x00dev, RT5592, REV_RT5592C))
		FUNC2(rt2x00dev, 103, 0xc0);
}