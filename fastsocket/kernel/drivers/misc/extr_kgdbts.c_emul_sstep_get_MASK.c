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
 int /*<<< orphan*/  arch_needs_sstep_emulation ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  sstep_addr ; 
 int sstep_state ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char *arg)
{
	if (!arch_needs_sstep_emulation) {
		FUNC2(arg);
		return;
	}
	switch (sstep_state) {
	case 0:
		FUNC3("Emulate single step\n");
		/* Start by looking at the current PC */
		FUNC2("g");
		break;
	case 1:
		/* set breakpoint */
		FUNC0("Z0", NULL, sstep_addr);
		break;
	case 2:
		/* Continue */
		FUNC2("c");
		break;
	case 3:
		/* Clear breakpoint */
		FUNC0("z0", NULL, sstep_addr);
		break;
	default:
		FUNC1("kgdbts: ERROR failed sstep get emulation\n");
	}
	sstep_state++;
}