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
 int /*<<< orphan*/  RESET_STATUS_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(char mode, const char *cmd)
{
	FUNC0(RESET_STATUS_ALL);

	switch (mode) {
	case 's':
		/* Jump into ROM at address 0 */
		FUNC1(0);
		break;
	case 'g':
		FUNC2();
		break;
	case 'h':
	default:
		FUNC3();
		break;
	}
}