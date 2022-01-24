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
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * selftest_opcodes ; 

__attribute__((used)) static bool FUNC2(void)
{
	bool pass = true;
	unsigned int i;

	for (i = 0; i < FUNC0(selftest_opcodes); ++i)
		pass = pass && FUNC1(&selftest_opcodes[i]);

	return pass;
}