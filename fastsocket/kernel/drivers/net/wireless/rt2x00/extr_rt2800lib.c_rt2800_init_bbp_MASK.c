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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP152_RX_DEFAULT_ANT ; 
 int /*<<< orphan*/  BBP3_ADC_INIT_MODE ; 
 int /*<<< orphan*/  BBP3_ADC_MODE_SWITCH ; 
 int /*<<< orphan*/  BBP47_TSSI_ADC6 ; 
 int /*<<< orphan*/  CAPABILITY_BT_COEXIST ; 
 int EACCES ; 
 int /*<<< orphan*/  EEPROM_BBP_REG_ID ; 
 unsigned int EEPROM_BBP_SIZE ; 
 scalar_t__ EEPROM_BBP_START ; 
 int /*<<< orphan*/  EEPROM_BBP_VALUE ; 
 scalar_t__ EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 scalar_t__ EEPROM_NIC_CONF1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF1_ANT_DIVERSITY ; 
 int /*<<< orphan*/  GPIO_CTRL ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR3 ; 
 int /*<<< orphan*/  GPIO_CTRL_DIR6 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL3 ; 
 int /*<<< orphan*/  GPIO_CTRL_VAL6 ; 
 int /*<<< orphan*/  REV_RT2860C ; 
 int /*<<< orphan*/  REV_RT2860D ; 
 int /*<<< orphan*/  REV_RT3070F ; 
 int /*<<< orphan*/  REV_RT3071E ; 
 int /*<<< orphan*/  REV_RT3090E ; 
 int /*<<< orphan*/  REV_RT3390E ; 
 int /*<<< orphan*/  REV_RT5390R ; 
 int /*<<< orphan*/  RT2860 ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3290 ; 
 int /*<<< orphan*/  RT3352 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  RT3572 ; 
 int /*<<< orphan*/  RT5390 ; 
 int /*<<< orphan*/  RT5392 ; 
 int /*<<< orphan*/  RT5592 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC5 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct rt2x00_dev*) ; 
 scalar_t__ FUNC9 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct rt2x00_dev*,scalar_t__,int*) ; 
 int FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(struct rt2x00_dev *rt2x00dev)
{
	unsigned int i;
	u16 eeprom;
	u8 reg_id;
	u8 value;

	if (FUNC18(FUNC9(rt2x00dev) ||
		     FUNC8(rt2x00dev)))
		return -EACCES;

	if (FUNC12(rt2x00dev, RT5592)) {
		FUNC3(rt2x00dev);
		return 0;
	}

	if (FUNC12(rt2x00dev, RT3352)) {
		FUNC2(rt2x00dev, 3, 0x00);
		FUNC2(rt2x00dev, 4, 0x50);
	}

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC0(rt2x00dev);

	if (FUNC5(rt2x00dev) ||
	    FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT3572) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 31, 0x08);

	if (FUNC12(rt2x00dev, RT3352))
		FUNC2(rt2x00dev, 47, 0x48);

	FUNC2(rt2x00dev, 65, 0x2c);
	FUNC2(rt2x00dev, 66, 0x38);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 68, 0x0b);

	if (FUNC13(rt2x00dev, RT2860, REV_RT2860C)) {
		FUNC2(rt2x00dev, 69, 0x16);
		FUNC2(rt2x00dev, 73, 0x12);
	} else if (FUNC12(rt2x00dev, RT3290) ||
		   FUNC12(rt2x00dev, RT3352) ||
		   FUNC12(rt2x00dev, RT5390) ||
		   FUNC12(rt2x00dev, RT5392)) {
		FUNC2(rt2x00dev, 69, 0x12);
		FUNC2(rt2x00dev, 73, 0x13);
		FUNC2(rt2x00dev, 75, 0x46);
		FUNC2(rt2x00dev, 76, 0x28);

		if (FUNC12(rt2x00dev, RT3290))
			FUNC2(rt2x00dev, 77, 0x58);
		else
			FUNC2(rt2x00dev, 77, 0x59);
	} else {
		FUNC2(rt2x00dev, 69, 0x12);
		FUNC2(rt2x00dev, 73, 0x10);
	}

	FUNC2(rt2x00dev, 70, 0x0a);

	if (FUNC12(rt2x00dev, RT3070) ||
	    FUNC12(rt2x00dev, RT3071) ||
	    FUNC12(rt2x00dev, RT3090) ||
	    FUNC12(rt2x00dev, RT3390) ||
	    FUNC12(rt2x00dev, RT3572) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392)) {
		FUNC2(rt2x00dev, 79, 0x13);
		FUNC2(rt2x00dev, 80, 0x05);
		FUNC2(rt2x00dev, 81, 0x33);
	} else if (FUNC5(rt2x00dev)) {
		FUNC2(rt2x00dev, 78, 0x0e);
		FUNC2(rt2x00dev, 80, 0x08);
	} else if (FUNC12(rt2x00dev, RT3290)) {
		FUNC2(rt2x00dev, 74, 0x0b);
		FUNC2(rt2x00dev, 79, 0x18);
		FUNC2(rt2x00dev, 80, 0x09);
		FUNC2(rt2x00dev, 81, 0x33);
	} else if (FUNC12(rt2x00dev, RT3352)) {
		FUNC2(rt2x00dev, 78, 0x0e);
		FUNC2(rt2x00dev, 80, 0x08);
		FUNC2(rt2x00dev, 81, 0x37);
	} else {
		FUNC2(rt2x00dev, 81, 0x37);
	}

	FUNC2(rt2x00dev, 82, 0x62);
	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 83, 0x7a);
	else
		FUNC2(rt2x00dev, 83, 0x6a);

	if (FUNC13(rt2x00dev, RT2860, REV_RT2860D))
		FUNC2(rt2x00dev, 84, 0x19);
	else if (FUNC12(rt2x00dev, RT3290) ||
		 FUNC12(rt2x00dev, RT5390) ||
		 FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 84, 0x9a);
	else
		FUNC2(rt2x00dev, 84, 0x99);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 86, 0x38);
	else
		FUNC2(rt2x00dev, 86, 0x00);

	if (FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 88, 0x90);

	FUNC2(rt2x00dev, 91, 0x04);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 92, 0x02);
	else
		FUNC2(rt2x00dev, 92, 0x00);

	if (FUNC12(rt2x00dev, RT5392)) {
		FUNC2(rt2x00dev, 95, 0x9a);
		FUNC2(rt2x00dev, 98, 0x12);
	}

	if (FUNC14(rt2x00dev, RT3070, REV_RT3070F) ||
	    FUNC14(rt2x00dev, RT3071, REV_RT3071E) ||
	    FUNC14(rt2x00dev, RT3090, REV_RT3090E) ||
	    FUNC14(rt2x00dev, RT3390, REV_RT3390E) ||
	    FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT3572) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392) ||
	    FUNC5(rt2x00dev))
		FUNC2(rt2x00dev, 103, 0xc0);
	else
		FUNC2(rt2x00dev, 103, 0x00);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT3352) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 104, 0x92);

	if (FUNC5(rt2x00dev))
		FUNC2(rt2x00dev, 105, 0x01);
	else if (FUNC12(rt2x00dev, RT3290))
		FUNC2(rt2x00dev, 105, 0x1c);
	else if (FUNC12(rt2x00dev, RT3352))
		FUNC2(rt2x00dev, 105, 0x34);
	else if (FUNC12(rt2x00dev, RT5390) ||
		 FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 105, 0x3c);
	else
		FUNC2(rt2x00dev, 105, 0x05);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT5390))
		FUNC2(rt2x00dev, 106, 0x03);
	else if (FUNC12(rt2x00dev, RT3352))
		FUNC2(rt2x00dev, 106, 0x05);
	else if (FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 106, 0x12);
	else
		FUNC2(rt2x00dev, 106, 0x35);

	if (FUNC12(rt2x00dev, RT3352))
		FUNC2(rt2x00dev, 120, 0x50);

	if (FUNC12(rt2x00dev, RT3290) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392))
		FUNC2(rt2x00dev, 128, 0x12);

	if (FUNC12(rt2x00dev, RT5392)) {
		FUNC2(rt2x00dev, 134, 0xd0);
		FUNC2(rt2x00dev, 135, 0xf6);
	}

	if (FUNC12(rt2x00dev, RT3352))
		FUNC2(rt2x00dev, 137, 0x0f);

	if (FUNC12(rt2x00dev, RT3071) ||
	    FUNC12(rt2x00dev, RT3090) ||
	    FUNC12(rt2x00dev, RT3390) ||
	    FUNC12(rt2x00dev, RT3572) ||
	    FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392)) {
		FUNC1(rt2x00dev, 138, &value);

		FUNC10(rt2x00dev, EEPROM_NIC_CONF0, &eeprom);
		if (FUNC11(eeprom, EEPROM_NIC_CONF0_TXPATH) == 1)
			value |= 0x20;
		if (FUNC11(eeprom, EEPROM_NIC_CONF0_RXPATH) == 1)
			value &= ~0x02;

		FUNC2(rt2x00dev, 138, value);
	}

	if (FUNC12(rt2x00dev, RT3290)) {
		FUNC2(rt2x00dev, 67, 0x24);
		FUNC2(rt2x00dev, 143, 0x04);
		FUNC2(rt2x00dev, 142, 0x99);
		FUNC2(rt2x00dev, 150, 0x30);
		FUNC2(rt2x00dev, 151, 0x2e);
		FUNC2(rt2x00dev, 152, 0x20);
		FUNC2(rt2x00dev, 153, 0x34);
		FUNC2(rt2x00dev, 154, 0x40);
		FUNC2(rt2x00dev, 155, 0x3b);
		FUNC2(rt2x00dev, 253, 0x04);

		FUNC1(rt2x00dev, 47, &value);
		FUNC16(&value, BBP47_TSSI_ADC6, 1);
		FUNC2(rt2x00dev, 47, value);

		/* Use 5-bit ADC for Acquisition and 8-bit ADC for data */
		FUNC1(rt2x00dev, 3, &value);
		FUNC16(&value, BBP3_ADC_MODE_SWITCH, 1);
		FUNC16(&value, BBP3_ADC_INIT_MODE, 1);
		FUNC2(rt2x00dev, 3, value);
	}

	if (FUNC12(rt2x00dev, RT3352)) {
		FUNC2(rt2x00dev, 163, 0xbd);
		/* Set ITxBF timeout to 0x9c40=1000msec */
		FUNC2(rt2x00dev, 179, 0x02);
		FUNC2(rt2x00dev, 180, 0x00);
		FUNC2(rt2x00dev, 182, 0x40);
		FUNC2(rt2x00dev, 180, 0x01);
		FUNC2(rt2x00dev, 182, 0x9c);
		FUNC2(rt2x00dev, 179, 0x00);
		/* Reprogram the inband interface to put right values in RXWI */
		FUNC2(rt2x00dev, 142, 0x04);
		FUNC2(rt2x00dev, 143, 0x3b);
		FUNC2(rt2x00dev, 142, 0x06);
		FUNC2(rt2x00dev, 143, 0xa0);
		FUNC2(rt2x00dev, 142, 0x07);
		FUNC2(rt2x00dev, 143, 0xa1);
		FUNC2(rt2x00dev, 142, 0x08);
		FUNC2(rt2x00dev, 143, 0xa2);

		FUNC2(rt2x00dev, 148, 0xc8);
	}

	if (FUNC12(rt2x00dev, RT5390) ||
	    FUNC12(rt2x00dev, RT5392)) {
		int ant, div_mode;

		FUNC10(rt2x00dev, EEPROM_NIC_CONF1, &eeprom);
		div_mode = FUNC11(eeprom,
					      EEPROM_NIC_CONF1_ANT_DIVERSITY);
		ant = (div_mode == 3) ? 1 : 0;

		/* check if this is a Bluetooth combo card */
		if (FUNC17(CAPABILITY_BT_COEXIST, &rt2x00dev->cap_flags)) {
			u32 reg;

			FUNC6(rt2x00dev, GPIO_CTRL, &reg);
			FUNC15(&reg, GPIO_CTRL_DIR3, 0);
			FUNC15(&reg, GPIO_CTRL_DIR6, 0);
			FUNC15(&reg, GPIO_CTRL_VAL3, 0);
			FUNC15(&reg, GPIO_CTRL_VAL6, 0);
			if (ant == 0)
				FUNC15(&reg, GPIO_CTRL_VAL3, 1);
			else if (ant == 1)
				FUNC15(&reg, GPIO_CTRL_VAL6, 1);
			FUNC7(rt2x00dev, GPIO_CTRL, reg);
		}

		/* This chip has hardware antenna diversity*/
		if (FUNC14(rt2x00dev, RT5390, REV_RT5390R)) {
			FUNC2(rt2x00dev, 150, 0); /* Disable Antenna Software OFDM */
			FUNC2(rt2x00dev, 151, 0); /* Disable Antenna Software CCK */
			FUNC2(rt2x00dev, 154, 0); /* Clear previously selected antenna */
		}

		FUNC1(rt2x00dev, 152, &value);
		if (ant == 0)
			FUNC16(&value, BBP152_RX_DEFAULT_ANT, 1);
		else
			FUNC16(&value, BBP152_RX_DEFAULT_ANT, 0);
		FUNC2(rt2x00dev, 152, value);

		FUNC4(rt2x00dev);
	}

	for (i = 0; i < EEPROM_BBP_SIZE; i++) {
		FUNC10(rt2x00dev, EEPROM_BBP_START + i, &eeprom);

		if (eeprom != 0xffff && eeprom != 0x0000) {
			reg_id = FUNC11(eeprom, EEPROM_BBP_REG_ID);
			value = FUNC11(eeprom, EEPROM_BBP_VALUE);
			FUNC2(rt2x00dev, reg_id, value);
		}
	}

	return 0;
}