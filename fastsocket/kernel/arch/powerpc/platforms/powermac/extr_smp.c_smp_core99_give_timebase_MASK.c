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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ tb_req ; 
 scalar_t__ timebase ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned long flags;

	FUNC3(flags);

	while(!tb_req)
		FUNC0();
	tb_req = 0;
	FUNC5)(1);
	FUNC4();
	timebase = FUNC1();
	FUNC4();
	while (timebase)
		FUNC0();
	FUNC4();
	FUNC5)(0);
	FUNC4();

	FUNC2(flags);
}