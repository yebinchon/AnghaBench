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
struct TYPE_4__ {TYPE_1__* input; } ;
struct cx88_core {int boardnr; TYPE_2__ board; } ;
struct TYPE_3__ {int gpio0; } ;

/* Variables and functions */
#define  CX88_BOARD_DVICO_FUSIONHDTV_7_GOLD 136 
#define  CX88_BOARD_HAUPPAUGE_HVR1300 135 
#define  CX88_BOARD_HAUPPAUGE_HVR3000 134 
#define  CX88_BOARD_HAUPPAUGE_HVR4000 133 
#define  CX88_BOARD_PROLINK_PV_8000GT 132 
#define  CX88_BOARD_PROLINK_PV_GLOBAL_XTREME 131 
#define  CX88_BOARD_TWINHAN_VP1027_DVBS 130 
#define  CX88_BOARD_WINFAST_DTV1800H 129 
#define  CX88_BOARD_WINFAST_TV2000_XP_GLOBAL 128 
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  MO_GP1_IO ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct cx88_core *core)
{
	switch (core->boardnr) {
	case CX88_BOARD_HAUPPAUGE_HVR1300:
		/*
		 * Bring the 702 demod up before i2c scanning/attach or devices are hidden
		 * We leave here with the 702 on the bus
		 *
		 * "reset the IR receiver on GPIO[3]"
		 * Reported by Mike Crash <mike AT mikecrash.com>
		 */
		FUNC2(MO_GP0_IO, 0x0000ef88);
		FUNC5(1000);
		FUNC0(MO_GP0_IO, 0x00000088);
		FUNC5(50);
		FUNC1(MO_GP0_IO, 0x00000088); /* 702 out of reset */
		FUNC5(1000);
		break;

	case CX88_BOARD_PROLINK_PV_GLOBAL_XTREME:
	case CX88_BOARD_PROLINK_PV_8000GT:
		FUNC2(MO_GP2_IO, 0xcf7);
		FUNC3(50);
		FUNC2(MO_GP2_IO, 0xef5);
		FUNC3(50);
		FUNC2(MO_GP2_IO, 0xcf7);
		FUNC4(10);
		break;

	case CX88_BOARD_DVICO_FUSIONHDTV_7_GOLD:
		/* Enable the xc5000 tuner */
		FUNC1(MO_GP0_IO, 0x00001010);
		break;

	case CX88_BOARD_HAUPPAUGE_HVR3000:
	case CX88_BOARD_HAUPPAUGE_HVR4000:
		/* Init GPIO */
		FUNC2(MO_GP0_IO, core->board.input[0].gpio0);
		FUNC5(1000);
		FUNC0(MO_GP0_IO, 0x00000080);
		FUNC5(50);
		FUNC1(MO_GP0_IO, 0x00000080); /* 702 out of reset */
		FUNC5(1000);
		break;

	case CX88_BOARD_WINFAST_TV2000_XP_GLOBAL:
	case CX88_BOARD_WINFAST_DTV1800H:
		/* GPIO 12 (xc3028 tuner reset) */
		FUNC1(MO_GP1_IO, 0x1010);
		FUNC3(50);
		FUNC0(MO_GP1_IO, 0x10);
		FUNC3(50);
		FUNC1(MO_GP1_IO, 0x10);
		FUNC3(50);
		break;

	case CX88_BOARD_TWINHAN_VP1027_DVBS:
		FUNC2(MO_GP0_IO, 0x00003230);
		FUNC2(MO_GP0_IO, 0x00003210);
		FUNC4(1);
		FUNC2(MO_GP0_IO, 0x00001230);
		break;
	}
}