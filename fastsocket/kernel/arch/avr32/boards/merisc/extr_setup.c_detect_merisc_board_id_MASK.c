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
 int /*<<< orphan*/  AT32_GPIOF_PULLUP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int merisc_board_id ; 

__attribute__((used)) static void FUNC3(void)
{
	/* Board ID pins MUST be set as input or the board may be damaged */
	FUNC1(FUNC0(24), AT32_GPIOF_PULLUP);
	FUNC1(FUNC0(25), AT32_GPIOF_PULLUP);
	FUNC1(FUNC0(26), AT32_GPIOF_PULLUP);
	FUNC1(FUNC0(27), AT32_GPIOF_PULLUP);

	merisc_board_id = !FUNC2(FUNC0(24)) +
		!FUNC2(FUNC0(25)) * 2 +
		!FUNC2(FUNC0(26)) * 4 +
		!FUNC2(FUNC0(27)) * 8;
}