#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* i2c1_sda3; void* i2c1_sda2; void* i2c1_sda1; void* i2c1_sen; void* i2c1; void* i2c0; void* pwm2; void* pwm1; void* pwm0; void* sser; void* ser4; void* ser3; void* ser2; void* ser1; void* vout_sync; void* vout; void* tg_clk; void* tg; void* geth; void* eth_mdio; void* eth; } ;
typedef  TYPE_1__ reg_pinmux_rw_hwprot ;
typedef  enum fixed_function { ____Placeholder_fixed_function } fixed_function ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PORT_A ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  pinmux ; 
#define  pinmux_eth 145 
#define  pinmux_i2c0 144 
#define  pinmux_i2c1 143 
#define  pinmux_i2c1_3wire 142 
#define  pinmux_i2c1_sda1 141 
#define  pinmux_i2c1_sda2 140 
#define  pinmux_i2c1_sda3 139 
 int /*<<< orphan*/  pinmux_lock ; 
#define  pinmux_pwm0 138 
#define  pinmux_pwm1 137 
#define  pinmux_pwm2 136 
#define  pinmux_ser1 135 
#define  pinmux_ser2 134 
#define  pinmux_ser3 133 
#define  pinmux_ser4 132 
#define  pinmux_sser 131 
#define  pinmux_tg_ccd 130 
#define  pinmux_tg_cmos 129 
#define  pinmux_vout 128 
 char* pins ; 
 int /*<<< orphan*/  regi_pinmux ; 
 void* regk_pinmux_no ; 
 int /*<<< orphan*/  rw_hwprot ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC7(enum fixed_function function)
{
	int ret = -EINVAL;
	char saved[sizeof pins];
	unsigned long flags;

	FUNC5(&pinmux_lock, flags);

	/* Save internal data for recovery */
	FUNC4(saved, pins, sizeof pins);

	FUNC3(); /* must be done before we read rw_hwprot */

	reg_pinmux_rw_hwprot hwprot = FUNC0(pinmux, regi_pinmux, rw_hwprot);

	switch (function) {
	case pinmux_eth:
		ret = FUNC2(PORT_B, 8, 23);
		ret |= FUNC2(PORT_B, 24, 25);
		ret |= FUNC2(PORT_B, 0, 7);
		hwprot.eth = hwprot.eth_mdio = hwprot.geth = regk_pinmux_no;
		break;
	case pinmux_tg_cmos:
		ret = FUNC2(PORT_B, 27, 29);
		hwprot.tg_clk = regk_pinmux_no;
		break;
	case pinmux_tg_ccd:
		ret = FUNC2(PORT_B, 27, 31);
		ret |= FUNC2(PORT_C, 0, 15);
		hwprot.tg = hwprot.tg_clk = regk_pinmux_no;
		break;
	case pinmux_vout:
		ret = FUNC2(PORT_A, 8, 18);
		hwprot.vout = hwprot.vout_sync = regk_pinmux_no;
		break;
	case pinmux_ser1:
		ret = FUNC2(PORT_A, 24, 25);
		hwprot.ser1 = regk_pinmux_no;
		break;
	case pinmux_ser2:
		ret = FUNC2(PORT_A, 26, 27);
		hwprot.ser2 = regk_pinmux_no;
		break;
	case pinmux_ser3:
		ret = FUNC2(PORT_A, 28, 29);
		hwprot.ser3 = regk_pinmux_no;
		break;
	case pinmux_ser4:
		ret = FUNC2(PORT_A, 30, 31);
		hwprot.ser4 = regk_pinmux_no;
		break;
	case pinmux_sser:
		ret = FUNC2(PORT_A, 19, 23);
		hwprot.sser = regk_pinmux_no;
		break;
	case pinmux_pwm0:
		ret = FUNC2(PORT_A, 30, 30);
		hwprot.pwm0 = regk_pinmux_no;
		break;
	case pinmux_pwm1:
		ret = FUNC2(PORT_A, 31, 31);
		hwprot.pwm1 = regk_pinmux_no;
		break;
	case pinmux_pwm2:
		ret = FUNC2(PORT_B, 26, 26);
		hwprot.pwm2 = regk_pinmux_no;
		break;
	case pinmux_i2c0:
		ret = FUNC2(PORT_A, 0, 1);
		hwprot.i2c0 = regk_pinmux_no;
		break;
	case pinmux_i2c1:
		ret = FUNC2(PORT_A, 2, 3);
		hwprot.i2c1 = regk_pinmux_no;
		break;
	case pinmux_i2c1_3wire:
		ret = FUNC2(PORT_A, 2, 3);
		ret |= FUNC2(PORT_A, 7, 7);
		hwprot.i2c1 = hwprot.i2c1_sen = regk_pinmux_no;
		break;
	case pinmux_i2c1_sda1:
		ret = FUNC2(PORT_A, 2, 4);
		hwprot.i2c1_sda1 = regk_pinmux_no;
		break;
	case pinmux_i2c1_sda2:
		ret = FUNC2(PORT_A, 2, 3);
		ret |= FUNC2(PORT_A, 5, 5);
		hwprot.i2c1_sda2 = regk_pinmux_no;
		break;
	case pinmux_i2c1_sda3:
		ret = FUNC2(PORT_A, 2, 3);
		ret |= FUNC2(PORT_A, 6, 6);
		hwprot.i2c1_sda3 = regk_pinmux_no;
		break;
	default:
		ret = -EINVAL;
		break;
	}

	if (!ret)
		FUNC1(pinmux, regi_pinmux, rw_hwprot, hwprot);
	else
		FUNC4(pins, saved, sizeof pins);

  FUNC6(&pinmux_lock, flags);

  return ret;
}