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
struct TYPE_2__ {int board_type; } ;

/* Variables and functions */
#define  CVMX_BOARD_TYPE_NAO38 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CVMX_GPIO_TX_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* octeon_bootinfo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *),int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	FUNC4(octeon_kill_core, NULL, 0);

	switch (octeon_bootinfo->board_type) {
	case CVMX_BOARD_TYPE_NAO38:
		/* Driving a 1 to GPIO 12 shuts off this board */
		FUNC1(FUNC0(12), 1);
		FUNC1(CVMX_GPIO_TX_SET, 0x1000);
		break;
	default:
		FUNC3("PowerOff");
		break;
	}

	FUNC2(NULL);
}