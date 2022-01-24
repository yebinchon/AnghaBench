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
 int /*<<< orphan*/  ID ; 
 int /*<<< orphan*/  IO_RANGE ; 
 int* probeaddrs ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(void)
{
	int *base = probeaddrs;
	int ints[2];

	ints[0] = 1;
	for(; *base; base++) {
		if (FUNC1(*base, IO_RANGE, ID)) {
			if (FUNC3(*base)) {
				ints[1] = *base;
				FUNC2(NULL, ints);
			}
			FUNC0(*base, IO_RANGE);
		}
	}
}