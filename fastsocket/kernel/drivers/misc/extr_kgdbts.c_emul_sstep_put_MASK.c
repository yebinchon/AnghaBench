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
struct TYPE_2__ {int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ BREAK_INSTR_SIZE ; 
 int /*<<< orphan*/  NUMREGBYTES ; 
 int /*<<< orphan*/  arch_needs_sstep_emulation ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ kgdbts_gdb_regs ; 
 int /*<<< orphan*/  kgdbts_regs ; 
 scalar_t__ sstep_addr ; 
 int sstep_state ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 TYPE_1__ ts ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(char *put_str, char *arg)
{
	if (!arch_needs_sstep_emulation) {
		if (!FUNC4(put_str+1, arg, 2))
			return 0;
		return 1;
	}
	switch (sstep_state) {
	case 1:
		/* validate the "g" packet to get the IP */
		FUNC3(&put_str[1], (char *)kgdbts_gdb_regs,
			 NUMREGBYTES);
		FUNC1(kgdbts_gdb_regs, &kgdbts_regs);
		FUNC5("Stopped at IP: %lx\n",
			 FUNC2(&kgdbts_regs));
		/* Want to stop at IP + break instruction size by default */
		sstep_addr = FUNC2(&kgdbts_regs) +
			BREAK_INSTR_SIZE;
		break;
	case 2:
		if (FUNC4(put_str, "$OK", 3)) {
			FUNC0("kgdbts: failed sstep break set\n");
			return 1;
		}
		break;
	case 3:
		if (FUNC4(put_str, "$T0", 3)) {
			FUNC0("kgdbts: failed continue sstep\n");
			return 1;
		}
		break;
	case 4:
		if (FUNC4(put_str, "$OK", 3)) {
			FUNC0("kgdbts: failed sstep break unset\n");
			return 1;
		}
		/* Single step is complete so continue on! */
		sstep_state = 0;
		return 0;
	default:
		FUNC0("kgdbts: ERROR failed sstep put emulation\n");
	}

	/* Continue on the same test line until emulation is complete */
	ts.idx--;
	return 0;
}