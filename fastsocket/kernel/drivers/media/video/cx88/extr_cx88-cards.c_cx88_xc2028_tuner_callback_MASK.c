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
struct cx88_core {int boardnr; int /*<<< orphan*/  input; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  CX88_BOARD_DVICO_FUSIONHDTV_5_PCI_NANO 139 
#define  CX88_BOARD_DVICO_FUSIONHDTV_DVB_T_PRO 138 
#define  CX88_BOARD_GENIATECH_X8000_MT 137 
#define  CX88_BOARD_KWORLD_ATSC_120 136 
#define  CX88_BOARD_POWERCOLOR_REAL_ANGEL 135 
#define  CX88_BOARD_PROLINK_PV_8000GT 134 
#define  CX88_BOARD_PROLINK_PV_GLOBAL_XTREME 133 
#define  CX88_BOARD_WINFAST_DTV1800H 132 
#define  CX88_BOARD_WINFAST_TV2000_XP_GLOBAL 131 
#define  CX88_RADIO 130 
#define  CX88_VMUX_DVB 129 
 int EINVAL ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  MO_GP1_IO ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
#define  XC2028_TUNER_RESET 128 
 int FUNC1 (struct cx88_core*,int,int) ; 
 int FUNC2 (struct cx88_core*,int,int) ; 
 int FUNC3 (struct cx88_core*,int,int) ; 
 int FUNC4 (struct cx88_core*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cx88_core*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct cx88_core *core,
				      int command, int arg)
{
	/* Board-specific callbacks */
	switch (core->boardnr) {
	case CX88_BOARD_POWERCOLOR_REAL_ANGEL:
	case CX88_BOARD_GENIATECH_X8000_MT:
	case CX88_BOARD_KWORLD_ATSC_120:
		return FUNC3(core,
							command, arg);
	case CX88_BOARD_PROLINK_PV_8000GT:
	case CX88_BOARD_PROLINK_PV_GLOBAL_XTREME:
		return FUNC2(core, command, arg);
	case CX88_BOARD_DVICO_FUSIONHDTV_DVB_T_PRO:
	case CX88_BOARD_DVICO_FUSIONHDTV_5_PCI_NANO:
		return FUNC1(core, command, arg);
	case CX88_BOARD_WINFAST_TV2000_XP_GLOBAL:
	case CX88_BOARD_WINFAST_DTV1800H:
		return FUNC4(core, command, arg);
	}

	switch (command) {
	case XC2028_TUNER_RESET:
		switch (FUNC0(core->input).type) {
		case CX88_RADIO:
			FUNC6(core, "setting GPIO to radio!\n");
			FUNC5(MO_GP0_IO, 0x4ff);
			FUNC7(250);
			FUNC5(MO_GP2_IO, 0xff);
			FUNC7(250);
			break;
		case CX88_VMUX_DVB:	/* Digital TV*/
		default:		/* Analog TV */
			FUNC6(core, "setting GPIO to TV!\n");
			break;
		}
		FUNC5(MO_GP1_IO, 0x101010);
		FUNC7(250);
		FUNC5(MO_GP1_IO, 0x101000);
		FUNC7(250);
		FUNC5(MO_GP1_IO, 0x101010);
		FUNC7(250);
		return 0;
	}
	return -EINVAL;
}