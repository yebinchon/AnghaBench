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
struct bpt {int enabled; scalar_t__ address; int /*<<< orphan*/  instr; } ;

/* Variables and functions */
 int BP_IABR ; 
 int BP_TRAP ; 
 int NBPTS ; 
 unsigned int bpinstr ; 
 struct bpt* bpts ; 
 int FUNC0 (scalar_t__,unsigned int*,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;
	struct bpt *bp;
	unsigned instr;

	bp = bpts;
	for (i = 0; i < NBPTS; ++i, ++bp) {
		if ((bp->enabled & (BP_TRAP|BP_IABR)) != BP_TRAP)
			continue;
		if (FUNC0(bp->address, &instr, 4) == 4
		    && instr == bpinstr
		    && FUNC1(bp->address, &bp->instr, 4) != 4)
			FUNC2("Couldn't remove breakpoint at %lx\n",
			       bp->address);
		else
			FUNC3((void *)bp->address);
	}
}