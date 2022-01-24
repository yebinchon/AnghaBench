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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned int FUNC4(int nr)
{
	unsigned int value = 0, mask = 1;
	int i;

	FUNC2(0);

	for (i = 0; i < nr; i++) {
		FUNC1(0);
		FUNC3(1);

		if (FUNC0())
			value |= mask;

		mask <<= 1;

		FUNC1(1);
		FUNC3(1);
	}

	return value;
}