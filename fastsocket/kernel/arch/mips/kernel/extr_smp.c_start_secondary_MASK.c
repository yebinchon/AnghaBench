#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  udelay_val; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* smp_finish ) () ;int /*<<< orphan*/  (* init_secondary ) () ;} ;

/* Variables and functions */
 int TCBIND_CURTC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  cpu_callin_map ; 
 TYPE_2__* cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loops_per_jiffy ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* mp_ops ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 unsigned int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

void FUNC15(void)
{
	unsigned int cpu;

#ifdef CONFIG_MIPS_MT_SMTC
	/* Only do cpu_probe for first TC of CPU */
	if ((read_c0_tcbind() & TCBIND_CURTC) == 0)
#endif /* CONFIG_MIPS_MT_SMTC */
	FUNC2();
	FUNC3();
	FUNC7();
	FUNC5();
	mp_ops->init_secondary();

	/*
	 * XXX parity protection should be folded in here when it's converted
	 * to an option instead of something based on .cputype
	 */

	FUNC0();
	FUNC8();
	cpu = FUNC11();
	cpu_data[cpu].udelay_val = loops_per_jiffy;

	FUNC6(cpu);

	mp_ops->smp_finish();
	FUNC10(cpu);

	FUNC4(cpu, cpu_callin_map);

	FUNC14();

	FUNC1();
}