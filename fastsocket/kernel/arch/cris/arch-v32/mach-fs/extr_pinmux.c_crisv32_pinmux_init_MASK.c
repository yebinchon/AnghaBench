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
struct TYPE_4__ {int /*<<< orphan*/  pa7; int /*<<< orphan*/  pa6; int /*<<< orphan*/  pa5; int /*<<< orphan*/  pa4; int /*<<< orphan*/  pa3; int /*<<< orphan*/  pa2; int /*<<< orphan*/  pa1; int /*<<< orphan*/  pa0; } ;
typedef  TYPE_1__ reg_pinmux_rw_pa ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  PORT_E ; 
 scalar_t__ PORT_PINS ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pinmux ; 
 int /*<<< orphan*/  pinmux_gpio ; 
 int /*<<< orphan*/  regi_pinmux ; 
 int /*<<< orphan*/  regk_pinmux_yes ; 
 int /*<<< orphan*/  rw_hwprot ; 
 int /*<<< orphan*/  rw_pa ; 

int FUNC4(void)
{
	static int initialized;

	if (!initialized) {
		reg_pinmux_rw_pa pa = FUNC0(pinmux, regi_pinmux, rw_pa);
		initialized = 1;
		FUNC2(pinmux, regi_pinmux, rw_hwprot, 0);
		pa.pa0 = pa.pa1 = pa.pa2 = pa.pa3 =
		    pa.pa4 = pa.pa5 = pa.pa6 = pa.pa7 = regk_pinmux_yes;
		FUNC1(pinmux, regi_pinmux, rw_pa, pa);
		FUNC3(PORT_B, 0, PORT_PINS - 1, pinmux_gpio);
		FUNC3(PORT_C, 0, PORT_PINS - 1, pinmux_gpio);
		FUNC3(PORT_D, 0, PORT_PINS - 1, pinmux_gpio);
		FUNC3(PORT_E, 0, PORT_PINS - 1, pinmux_gpio);
	}

	return 0;
}