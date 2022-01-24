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
typedef  int /*<<< orphan*/  u64 ;
struct amo {int /*<<< orphan*/  variable; } ;
typedef  enum xp_retval { ____Placeholder_xp_retval } xp_retval ;

/* Variables and functions */
 int /*<<< orphan*/  FETCHOP_OR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int,int /*<<< orphan*/ ) ; 
 int xpPioReadError ; 
 int xpSuccess ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xp_nofault_PIOR_target ; 

__attribute__((used)) static enum xp_retval
FUNC8(struct amo *amo, u64 flag, int nasid, int phys_cpuid,
		 int vector)
{
	int ret = 0;
	unsigned long irq_flags;

	FUNC5(irq_flags);

	FUNC0(FUNC3((u64)&amo->variable), FETCHOP_OR, flag);
	FUNC6(nasid, phys_cpuid, vector, 0);

	/*
	 * We must always use the nofault function regardless of whether we
	 * are on a Shub 1.1 system or a Shub 1.2 slice 0xc processor. If we
	 * didn't, we'd never know that the other partition is down and would
	 * keep sending IRQs and amos to it until the heartbeat times out.
	 */
	ret = FUNC7((u64 *)FUNC1(FUNC2(&amo->variable),
						     xp_nofault_PIOR_target));

	FUNC4(irq_flags);

	return (ret == 0) ? xpSuccess : xpPioReadError;
}