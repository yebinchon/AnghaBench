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
struct pt_regs {int /*<<< orphan*/  xer; int /*<<< orphan*/  ctr; int /*<<< orphan*/  link; int /*<<< orphan*/  ccr; int /*<<< orphan*/  msr; int /*<<< orphan*/  nip; int /*<<< orphan*/ * gpr; } ;
struct TYPE_3__ {int /*<<< orphan*/ * evr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUMREGBYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ,int) ; 

void FUNC4(unsigned long *gdb_regs, struct pt_regs *regs)
{
	unsigned long *ptr = gdb_regs;
	int reg;

	FUNC3(gdb_regs, 0, NUMREGBYTES);

	for (reg = 0; reg < 32; reg++)
		FUNC2(ptr, regs->gpr[reg]);

#ifdef CONFIG_FSL_BOOKE
#ifdef CONFIG_SPE
	for (reg = 0; reg < 32; reg++)
		PACK64(ptr, current->thread.evr[reg]);
#else
	ptr += 32;
#endif
#else
	/* fp registers not used by kernel, leave zero */
	ptr += 32 * 8 / sizeof(long);
#endif

	FUNC2(ptr, regs->nip);
	FUNC2(ptr, regs->msr);
	FUNC1(ptr, regs->ccr);
	FUNC2(ptr, regs->link);
	FUNC2(ptr, regs->ctr);
	FUNC1(ptr, regs->xer);

	FUNC0((unsigned long)ptr >
	       (unsigned long)(((void *)gdb_regs) + NUMREGBYTES));
}