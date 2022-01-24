#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int tx_chain_num; } ;
struct TYPE_3__ {int rf; } ;
struct rt2x00_dev {int rf_channel; TYPE_2__ default_ant; TYPE_1__ chip; } ;

/* Variables and functions */
#define  RF2020 139 
#define  RF3020 138 
#define  RF3021 137 
#define  RF3022 136 
#define  RF3052 135 
#define  RF3290 134 
#define  RF3320 133 
#define  RF5360 132 
#define  RF5370 131 
#define  RF5372 130 
#define  RF5390 129 
#define  RF5392 128 
 int /*<<< orphan*/  RFCSR3_VCOCAL_EN ; 
 int /*<<< orphan*/  RFCSR7_RF_TUNING ; 
 int /*<<< orphan*/  TX_PIN_CFG ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_A2_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_DISABLE ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G0_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G1_EN ; 
 int /*<<< orphan*/  TX_PIN_CFG_PA_PE_G2_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rt2x00_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct rt2x00_dev *rt2x00dev)
{
	u32	tx_pin;
	u8	rfcsr;

	/*
	 * A voltage-controlled oscillator(VCO) is an electronic oscillator
	 * designed to be controlled in oscillation frequency by a voltage
	 * input. Maybe the temperature will affect the frequency of
	 * oscillation to be shifted. The VCO calibration will be called
	 * periodically to adjust the frequency to be precision.
	*/

	FUNC1(rt2x00dev, TX_PIN_CFG, &tx_pin);
	tx_pin &= TX_PIN_CFG_PA_PE_DISABLE;
	FUNC2(rt2x00dev, TX_PIN_CFG, tx_pin);

	switch (rt2x00dev->chip.rf) {
	case RF2020:
	case RF3020:
	case RF3021:
	case RF3022:
	case RF3320:
	case RF3052:
		FUNC3(rt2x00dev, 7, &rfcsr);
		FUNC6(&rfcsr, RFCSR7_RF_TUNING, 1);
		FUNC4(rt2x00dev, 7, rfcsr);
		break;
	case RF3290:
	case RF5360:
	case RF5370:
	case RF5372:
	case RF5390:
	case RF5392:
		FUNC3(rt2x00dev, 3, &rfcsr);
		FUNC6(&rfcsr, RFCSR3_VCOCAL_EN, 1);
		FUNC4(rt2x00dev, 3, rfcsr);
		break;
	default:
		return;
	}

	FUNC0(1);

	FUNC1(rt2x00dev, TX_PIN_CFG, &tx_pin);
	if (rt2x00dev->rf_channel <= 14) {
		switch (rt2x00dev->default_ant.tx_chain_num) {
		case 3:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_G2_EN, 1);
			/* fall through */
		case 2:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_G1_EN, 1);
			/* fall through */
		case 1:
		default:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_G0_EN, 1);
			break;
		}
	} else {
		switch (rt2x00dev->default_ant.tx_chain_num) {
		case 3:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_A2_EN, 1);
			/* fall through */
		case 2:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_A1_EN, 1);
			/* fall through */
		case 1:
		default:
			FUNC5(&tx_pin, TX_PIN_CFG_PA_PE_A0_EN, 1);
			break;
		}
	}
	FUNC2(rt2x00dev, TX_PIN_CFG, tx_pin);

}