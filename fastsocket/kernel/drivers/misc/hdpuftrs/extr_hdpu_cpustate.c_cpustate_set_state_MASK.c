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
struct TYPE_2__ {unsigned char cached_val; int /*<<< orphan*/  lock; int /*<<< orphan*/  set_addr; int /*<<< orphan*/  clr_addr; } ;

/* Variables and functions */
 TYPE_1__ cpustate ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned char new_state)
{
	unsigned int state = (new_state << 21);

#ifdef DEBUG_CPUSTATE
	printk("CPUSTATE -> 0x%x\n", new_state);
#endif
	FUNC1(&cpustate.lock);
	cpustate.cached_val = new_state;
	FUNC3((0xff << 21), cpustate.clr_addr);
	FUNC3(state, cpustate.set_addr);
	FUNC2(&cpustate.lock);
}