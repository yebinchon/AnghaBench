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
typedef  int /*<<< orphan*/  u32 ;
struct resource {unsigned long start; unsigned long end; } ;

/* Variables and functions */
 unsigned long CHECK_CHUNKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static u32 *FUNC2(struct resource *res, u32 *val)
{
	unsigned long addr, left;

	for (addr = res->start; addr < res->end;
	     addr += CHECK_CHUNKSIZE) {
		left = res->end - addr;

		if (left > CHECK_CHUNKSIZE)
			left = CHECK_CHUNKSIZE;

		*val = FUNC0(~0, FUNC1(addr), left);
		val++;
	}

	return val;
}