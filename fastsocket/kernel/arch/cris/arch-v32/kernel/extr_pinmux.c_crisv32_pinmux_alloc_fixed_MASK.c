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
struct TYPE_4__ {void* timer; void* eth1_mgm; void* eth1; void* ata; void* ata2; void* ata1; void* ata0; void* sser1; void* sser0; void* ser3; void* ser2; void* ser1; } ;
typedef  TYPE_1__ reg_pinmux_rw_hwprot ;
typedef  enum fixed_function { ____Placeholder_fixed_function } fixed_function ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  PORT_E ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  pinmux ; 
#define  pinmux_ata 139 
#define  pinmux_ata0 138 
#define  pinmux_ata1 137 
#define  pinmux_ata2 136 
#define  pinmux_ata3 135 
#define  pinmux_eth1 134 
 int /*<<< orphan*/  pinmux_fixed ; 
 int /*<<< orphan*/  pinmux_lock ; 
#define  pinmux_ser1 133 
#define  pinmux_ser2 132 
#define  pinmux_ser3 131 
#define  pinmux_sser0 130 
#define  pinmux_sser1 129 
#define  pinmux_timer 128 
 char* pins ; 
 int /*<<< orphan*/  regi_pinmux ; 
 void* regk_pinmux_yes ; 
 int /*<<< orphan*/  rw_hwprot ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC6(enum fixed_function function)
{
	int ret = -EINVAL;
	char saved[sizeof pins];
	unsigned long flags;

	FUNC4(&pinmux_lock, flags);

	/* Save internal data for recovery */
	FUNC3(saved, pins, sizeof pins);

	reg_pinmux_rw_hwprot hwprot = FUNC0(pinmux, regi_pinmux, rw_hwprot);

	switch(function)
	{
	case pinmux_ser1:
		ret = FUNC2(PORT_C, 4, 7, pinmux_fixed);
		hwprot.ser1 = regk_pinmux_yes;
		break;
	case pinmux_ser2:
		ret = FUNC2(PORT_C, 8, 11, pinmux_fixed);
		hwprot.ser2 = regk_pinmux_yes;
		break;
	case pinmux_ser3:
		ret = FUNC2(PORT_C, 12, 15, pinmux_fixed);
		hwprot.ser3 = regk_pinmux_yes;
		break;
	case pinmux_sser0:
		ret = FUNC2(PORT_C, 0, 3, pinmux_fixed);
		ret |= FUNC2(PORT_C, 16, 16, pinmux_fixed);
		hwprot.sser0 = regk_pinmux_yes;
		break;
	case pinmux_sser1:
		ret = FUNC2(PORT_D, 0, 4, pinmux_fixed);
		hwprot.sser1 = regk_pinmux_yes;
		break;
	case pinmux_ata0:
		ret = FUNC2(PORT_D, 5, 7, pinmux_fixed);
		ret |= FUNC2(PORT_D, 15, 17, pinmux_fixed);
		hwprot.ata0 = regk_pinmux_yes;
		break;
	case pinmux_ata1:
		ret = FUNC2(PORT_D, 0, 4, pinmux_fixed);
		ret |= FUNC2(PORT_E, 17, 17, pinmux_fixed);
		hwprot.ata1 = regk_pinmux_yes;
		break;
	case pinmux_ata2:
		ret = FUNC2(PORT_C, 11, 15, pinmux_fixed);
		ret |= FUNC2(PORT_E, 3, 3, pinmux_fixed);
		hwprot.ata2 = regk_pinmux_yes;
		break;
	case pinmux_ata3:
		ret = FUNC2(PORT_C, 8, 10, pinmux_fixed);
		ret |= FUNC2(PORT_C, 0, 2, pinmux_fixed);
		hwprot.ata2 = regk_pinmux_yes;
		break;
	case pinmux_ata:
		ret = FUNC2(PORT_B, 0, 15, pinmux_fixed);
		ret |= FUNC2(PORT_D, 8, 15, pinmux_fixed);
		hwprot.ata = regk_pinmux_yes;
		break;
	case pinmux_eth1:
		ret = FUNC2(PORT_E, 0, 17, pinmux_fixed);
		hwprot.eth1 = regk_pinmux_yes;
		hwprot.eth1_mgm = regk_pinmux_yes;
		break;
	case pinmux_timer:
		ret = FUNC2(PORT_C, 16, 16, pinmux_fixed);
		hwprot.timer = regk_pinmux_yes;
		FUNC5(&pinmux_lock, flags);
		return ret;
	}

	if (!ret)
		FUNC1(pinmux, regi_pinmux, rw_hwprot, hwprot);
	else
		FUNC3(pins, saved, sizeof pins);

  FUNC5(&pinmux_lock, flags);

  return ret;
}