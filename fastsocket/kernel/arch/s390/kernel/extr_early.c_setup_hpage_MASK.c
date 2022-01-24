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
struct TYPE_2__ {int /*<<< orphan*/  machine_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_FLAG_HPAGE ; 
 TYPE_1__ S390_lowcore ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC1 () ; 

void FUNC2(void)
{
#ifndef CONFIG_DEBUG_PAGEALLOC
	unsigned int facilities;

	facilities = FUNC1();
	if (!(facilities & (1UL << 23)) || !(facilities & (1UL << 29)))
		return;
	S390_lowcore.machine_flags |= MACHINE_FLAG_HPAGE;
	FUNC0(0, 23);
#endif
}