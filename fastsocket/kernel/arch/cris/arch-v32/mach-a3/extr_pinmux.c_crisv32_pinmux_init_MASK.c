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

/* Variables and functions */
 int /*<<< orphan*/  PORT_A ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pinmux ; 
 int /*<<< orphan*/  pinmux_gpio ; 
 int /*<<< orphan*/  regi_pinmux ; 
 int /*<<< orphan*/  rw_hwprot ; 

int
FUNC2(void)
{
	static int initialized;

	if (!initialized) {
		initialized = 1;
		FUNC0(pinmux, regi_pinmux, rw_hwprot, 0);
		FUNC1(PORT_A, 0, 31, pinmux_gpio);
		FUNC1(PORT_B, 0, 31, pinmux_gpio);
		FUNC1(PORT_C, 0, 15, pinmux_gpio);
	}

	return 0;
}