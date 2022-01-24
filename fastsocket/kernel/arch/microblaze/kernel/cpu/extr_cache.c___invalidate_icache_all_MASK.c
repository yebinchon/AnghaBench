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
struct TYPE_2__ {unsigned int icache_size; unsigned int icache_line; scalar_t__ use_icache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

void FUNC5(void)
{
	unsigned int i;
	unsigned flags;

	if (cpuinfo.use_icache) {
		FUNC4(flags);
		FUNC0();

		/* Just loop through cache size and invalidate, no need to add
			CACHE_BASE address */
		for (i = 0; i < cpuinfo.icache_size;
			i += cpuinfo.icache_line)
				FUNC2(i);

		FUNC1();
		FUNC3(flags);
	}
}