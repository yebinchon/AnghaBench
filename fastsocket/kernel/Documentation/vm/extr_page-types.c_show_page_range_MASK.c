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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ opt_pid ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long,...) ; 

__attribute__((used)) static void FUNC2(unsigned long voffset,
			    unsigned long offset, uint64_t flags)
{
	static uint64_t      flags0;
	static unsigned long voff;
	static unsigned long index;
	static unsigned long count;

	if (flags == flags0 && offset == index + count &&
	    (!opt_pid || voffset == voff + count)) {
		count++;
		return;
	}

	if (count) {
		if (opt_pid)
			FUNC1("%lx\t", voff);
		FUNC1("%lx\t%lx\t%s\n",
				index, count, FUNC0(flags0));
	}

	flags0 = flags;
	index  = offset;
	voff   = voffset;
	count  = 1;
}