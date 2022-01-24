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
struct TYPE_2__ {int dcache_line; scalar_t__ dcache_size; scalar_t__ use_dcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 unsigned long FUNC5 (scalar_t__,unsigned long) ; 

void FUNC6(unsigned long start, unsigned long end)
{
	unsigned int i;
	unsigned flags;
	unsigned int align;

	if (cpuinfo.use_dcache) {
		/*
		 * No need to cover entire cache range,
		 * just cover cache footprint
		 */
		end = FUNC5(start + cpuinfo.dcache_size, end);
		align = ~(cpuinfo.dcache_line - 1);
		start &= align; /* Make sure we are aligned */
		/* Push end up to the next cache line */
		end = ((end & align) + cpuinfo.dcache_line);
		FUNC4(flags);
		FUNC0();

		for (i = start; i < end; i += cpuinfo.dcache_line)
			FUNC2(i);

		FUNC1();
		FUNC3(flags);
	}
}