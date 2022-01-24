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
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 unsigned long __IA64_UNCACHED_OFFSET ; 
 void* FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 () ; 

void *FUNC5(unsigned long port)
{
	if (!FUNC1()) {
		if (FUNC0(port))
			return (FUNC3(port));
		/* On sn2, legacy I/O ports don't point at anything */
		if (port < (64 * 1024))
			return NULL;
		if (FUNC2())
			return (FUNC3(port));
		else
			return ((void *)(port | __IA64_UNCACHED_OFFSET));
	} else {
		/* but the simulator uses them... */
		unsigned long addr;

		/*
		 * word align port, but need more than 10 bits
		 * for accessing registers in bedrock local block
		 * (so we don't do port&0xfff)
		 */
		addr = (FUNC4() ? 0xc00000028c000000UL : 0xc0000087cc000000UL) | ((port >> 2) << 12);
		if ((port >= 0x1f0 && port <= 0x1f7) || port == 0x3f6 || port == 0x3f7)
			addr |= port;
		return (void *)addr;
	}
}