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
typedef  int /*<<< orphan*/  u16 ;
struct rt2x00_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BBP138_RX_ADC1 ; 
 int /*<<< orphan*/  BBP138_TX_DAC1 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0 ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_RXPATH ; 
 int /*<<< orphan*/  EEPROM_NIC_CONF0_TXPATH ; 
 int /*<<< orphan*/  RFCSR30_RX_VCM ; 
 int /*<<< orphan*/  RFCSR38_RX_LO1_EN ; 
 int /*<<< orphan*/  RFCSR39_RX_LO2_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rt2x00_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct rt2x00_dev *rt2x00dev)
{
	u8 reg;
	u16 eeprom;

	/*  Turn off unused DAC1 and ADC1 to reduce power consumption */
	FUNC1(rt2x00dev, 138, &reg);
	FUNC5(rt2x00dev, EEPROM_NIC_CONF0, &eeprom);
	if (FUNC6(eeprom, EEPROM_NIC_CONF0_RXPATH) == 1)
		FUNC7(&reg, BBP138_RX_ADC1, 0);
	if (FUNC6(eeprom, EEPROM_NIC_CONF0_TXPATH) == 1)
		FUNC7(&reg, BBP138_TX_DAC1, 1);
	FUNC2(rt2x00dev, 138, reg);

	FUNC3(rt2x00dev, 38, &reg);
	FUNC7(&reg, RFCSR38_RX_LO1_EN, 0);
	FUNC4(rt2x00dev, 38, reg);

	FUNC3(rt2x00dev, 39, &reg);
	FUNC7(&reg, RFCSR39_RX_LO2_EN, 0);
	FUNC4(rt2x00dev, 39, reg);

	FUNC0(rt2x00dev);

	FUNC3(rt2x00dev, 30, &reg);
	FUNC7(&reg, RFCSR30_RX_VCM, 2);
	FUNC4(rt2x00dev, 30, reg);
}