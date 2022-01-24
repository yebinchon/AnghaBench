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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int /*<<< orphan*/  cap_flags; struct rt2800_drv_data* drv_data; } ;
struct rt2800_drv_data {int txmixer_gain_24g; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP138_RX_ADC1 ; 
 int /*<<< orphan*/  BBP138_TX_DAC1 ; 
 int /*<<< orphan*/  CAPABILITY_EXTERNAL_LNA_BG ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 int /*<<< orphan*/  REV_RT3070F ; 
 int /*<<< orphan*/  REV_RT3071E ; 
 int /*<<< orphan*/  REV_RT3090E ; 
 int /*<<< orphan*/  REV_RT3390E ; 
 int /*<<< orphan*/  RFCSR15_TX_LO2_EN ; 
 int /*<<< orphan*/  RFCSR17_R ; 
 int /*<<< orphan*/  RFCSR17_TXMIXER_GAIN ; 
 int /*<<< orphan*/  RFCSR17_TX_LO1_EN ; 
 int /*<<< orphan*/  RFCSR1_RF_BLOCK_EN ; 
 int /*<<< orphan*/  RFCSR1_RX0_PD ; 
 int /*<<< orphan*/  RFCSR1_RX1_PD ; 
 int /*<<< orphan*/  RFCSR1_TX0_PD ; 
 int /*<<< orphan*/  RFCSR1_TX1_PD ; 
 int /*<<< orphan*/  RFCSR20_RX_LO1_EN ; 
 int /*<<< orphan*/  RFCSR21_RX_LO2_EN ; 
 int /*<<< orphan*/  RFCSR27_R1 ; 
 int /*<<< orphan*/  RFCSR27_R2 ; 
 int /*<<< orphan*/  RFCSR27_R3 ; 
 int /*<<< orphan*/  RFCSR27_R4 ; 
 int /*<<< orphan*/  RT3070 ; 
 int /*<<< orphan*/  RT3071 ; 
 int /*<<< orphan*/  RT3090 ; 
 int /*<<< orphan*/  RT3390 ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct rt2x00_dev *rt2x00dev)
{
	struct rt2800_drv_data *drv_data = rt2x00dev->drv_data;
	u8 min_gain, rfcsr, bbp;
	u16 eeprom;

	FUNC2(rt2x00dev, 17, &rfcsr);

	FUNC8(&rfcsr, RFCSR17_TX_LO1_EN, 0);
	if (FUNC6(rt2x00dev, RT3070) ||
	    FUNC7(rt2x00dev, RT3071, REV_RT3071E) ||
	    FUNC7(rt2x00dev, RT3090, REV_RT3090E) ||
	    FUNC7(rt2x00dev, RT3390, REV_RT3390E)) {
		if (!FUNC9(CAPABILITY_EXTERNAL_LNA_BG, &rt2x00dev->cap_flags))
			FUNC8(&rfcsr, RFCSR17_R, 1);
	}

	min_gain = FUNC6(rt2x00dev, RT3070) ? 1 : 2;
	if (drv_data->txmixer_gain_24g >= min_gain) {
		FUNC8(&rfcsr, RFCSR17_TXMIXER_GAIN,
				  drv_data->txmixer_gain_24g);
	}

	FUNC3(rt2x00dev, 17, rfcsr);

	if (FUNC6(rt2x00dev, RT3090)) {
		/*  Turn off unused DAC1 and ADC1 to reduce power consumption */
		FUNC0(rt2x00dev, 138, &bbp);
		FUNC4(rt2x00dev, EEPROM_NIC_CONF0, &eeprom);
		if (FUNC5(eeprom, EEPROM_NIC_CONF0_RXPATH) == 1)
			FUNC8(&bbp, BBP138_RX_ADC1, 0);
		if (FUNC5(eeprom, EEPROM_NIC_CONF0_TXPATH) == 1)
			FUNC8(&bbp, BBP138_TX_DAC1, 1);
		FUNC1(rt2x00dev, 138, bbp);
	}

	if (FUNC6(rt2x00dev, RT3070)) {
		FUNC2(rt2x00dev, 27, &rfcsr);
		if (FUNC7(rt2x00dev, RT3070, REV_RT3070F))
			FUNC8(&rfcsr, RFCSR27_R1, 3);
		else
			FUNC8(&rfcsr, RFCSR27_R1, 0);
		FUNC8(&rfcsr, RFCSR27_R2, 0);
		FUNC8(&rfcsr, RFCSR27_R3, 0);
		FUNC8(&rfcsr, RFCSR27_R4, 0);
		FUNC3(rt2x00dev, 27, rfcsr);
	} else if (FUNC6(rt2x00dev, RT3071) ||
		   FUNC6(rt2x00dev, RT3090) ||
		   FUNC6(rt2x00dev, RT3390)) {
		FUNC2(rt2x00dev, 1, &rfcsr);
		FUNC8(&rfcsr, RFCSR1_RF_BLOCK_EN, 1);
		FUNC8(&rfcsr, RFCSR1_RX0_PD, 0);
		FUNC8(&rfcsr, RFCSR1_TX0_PD, 0);
		FUNC8(&rfcsr, RFCSR1_RX1_PD, 1);
		FUNC8(&rfcsr, RFCSR1_TX1_PD, 1);
		FUNC3(rt2x00dev, 1, rfcsr);

		FUNC2(rt2x00dev, 15, &rfcsr);
		FUNC8(&rfcsr, RFCSR15_TX_LO2_EN, 0);
		FUNC3(rt2x00dev, 15, rfcsr);

		FUNC2(rt2x00dev, 20, &rfcsr);
		FUNC8(&rfcsr, RFCSR20_RX_LO1_EN, 0);
		FUNC3(rt2x00dev, 20, rfcsr);

		FUNC2(rt2x00dev, 21, &rfcsr);
		FUNC8(&rfcsr, RFCSR21_RX_LO2_EN, 0);
		FUNC3(rt2x00dev, 21, rfcsr);
	}
}