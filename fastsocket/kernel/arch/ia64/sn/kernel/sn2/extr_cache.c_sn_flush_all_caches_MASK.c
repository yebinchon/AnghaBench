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
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long RGN_BITS ; 
 int /*<<< orphan*/  RGN_KERNEL ; 
 int /*<<< orphan*/  RGN_UNCACHED ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(long flush_addr, long bytes)
{
	unsigned long addr = flush_addr;

	/* SHub1 requires a cached address */
	if (FUNC2() && (addr & RGN_BITS) == FUNC0(RGN_UNCACHED))
		addr = (addr - FUNC0(RGN_UNCACHED)) + FUNC0(RGN_KERNEL);

	FUNC1(addr, addr + bytes);
	/*
	 * The last call may have returned before the caches
	 * were actually flushed, so we call it again to make
	 * sure.
	 */
	FUNC1(addr, addr + bytes);
	FUNC3();
}