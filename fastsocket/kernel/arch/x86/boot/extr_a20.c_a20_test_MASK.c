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
 scalar_t__ A20_TEST_ADDR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(int loops)
{
	int ok = 0;
	int saved, ctr;

	FUNC3(0x0000);
	FUNC4(0xffff);

	saved = ctr = FUNC1(A20_TEST_ADDR);

	while (loops--) {
		FUNC5(++ctr, A20_TEST_ADDR);
		FUNC0();	/* Serialize and make delay constant */
		ok = FUNC2(A20_TEST_ADDR+0x10) ^ ctr;
		if (ok)
			break;
	}

	FUNC5(saved, A20_TEST_ADDR);
	return ok;
}