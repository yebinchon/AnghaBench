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
struct TYPE_2__ {unsigned int id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 unsigned int ASID_FIRST_VERSION ; 
 unsigned int ASID_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_asid_lock ; 
 unsigned int cpu_last_asid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 

void FUNC12(struct mm_struct *mm)
{
	unsigned int asid;

	FUNC9(&cpu_asid_lock);
	asid = ++cpu_last_asid;
	if (asid == 0)
		asid = cpu_last_asid = ASID_FIRST_VERSION;

	/*
	 * If we've used up all our ASIDs, we need
	 * to start a new version and flush the TLB.
	 */
	if (FUNC11((asid & ~ASID_MASK) == 0)) {
		asid = ++cpu_last_asid;
		/* set the reserved ASID before flushing the TLB */
		asm("mcr	p15, 0, %0, c13, c0, 1	@ set reserved context ID\n"
		    :
		    : "r" (0));
		FUNC6();
		FUNC4();
		if (FUNC5()) {
			FUNC0();
			FUNC3();
		}
	}
	FUNC10(&cpu_asid_lock);

	FUNC1(FUNC7(mm), FUNC2(FUNC8()));
	mm->context.id = asid;
}