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
struct pt_regs {unsigned long ARM_cpsr; int /*<<< orphan*/  ARM_r0; int /*<<< orphan*/  ARM_r1; int /*<<< orphan*/  ARM_r2; int /*<<< orphan*/  ARM_r3; int /*<<< orphan*/  ARM_r4; int /*<<< orphan*/  ARM_r5; int /*<<< orphan*/  ARM_r6; int /*<<< orphan*/  ARM_r7; int /*<<< orphan*/  ARM_r8; int /*<<< orphan*/  ARM_r9; int /*<<< orphan*/  ARM_r10; int /*<<< orphan*/  ARM_fp; int /*<<< orphan*/  ARM_ip; int /*<<< orphan*/  ARM_sp; int /*<<< orphan*/  ARM_lr; int /*<<< orphan*/  ARM_pc; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  release; } ;

/* Variables and functions */
 unsigned long PSR_C_BIT ; 
 unsigned long PSR_N_BIT ; 
 unsigned long PSR_V_BIT ; 
 unsigned long PSR_Z_BIT ; 
 scalar_t__ FUNC0 (struct pt_regs*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 
 size_t FUNC6 (struct pt_regs*) ; 
 int /*<<< orphan*/ * isa_modes ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 size_t FUNC10 (struct pt_regs*) ; 
 int /*<<< orphan*/ * processor_modes ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 

void FUNC14(struct pt_regs *regs)
{
	unsigned long flags;
	char buf[64];

	FUNC9("CPU: %d    %s  (%s %.*s)\n",
		FUNC11(), FUNC8(), FUNC3()->release,
		(int)FUNC13(FUNC3()->version, " "),
		FUNC3()->version);
	FUNC7("PC is at %s\n", FUNC4(regs));
	FUNC7("LR is at %s\n", regs->ARM_lr);
	FUNC9("pc : [<%08lx>]    lr : [<%08lx>]    psr: %08lx\n"
	       "sp : %08lx  ip : %08lx  fp : %08lx\n",
		regs->ARM_pc, regs->ARM_lr, regs->ARM_cpsr,
		regs->ARM_sp, regs->ARM_ip, regs->ARM_fp);
	FUNC9("r10: %08lx  r9 : %08lx  r8 : %08lx\n",
		regs->ARM_r10, regs->ARM_r9,
		regs->ARM_r8);
	FUNC9("r7 : %08lx  r6 : %08lx  r5 : %08lx  r4 : %08lx\n",
		regs->ARM_r7, regs->ARM_r6,
		regs->ARM_r5, regs->ARM_r4);
	FUNC9("r3 : %08lx  r2 : %08lx  r1 : %08lx  r0 : %08lx\n",
		regs->ARM_r3, regs->ARM_r2,
		regs->ARM_r1, regs->ARM_r0);

	flags = regs->ARM_cpsr;
	buf[0] = flags & PSR_N_BIT ? 'N' : 'n';
	buf[1] = flags & PSR_Z_BIT ? 'Z' : 'z';
	buf[2] = flags & PSR_C_BIT ? 'C' : 'c';
	buf[3] = flags & PSR_V_BIT ? 'V' : 'v';
	buf[4] = '\0';

	FUNC9("Flags: %s  IRQs o%s  FIQs o%s  Mode %s  ISA %s  Segment %s\n",
		buf, FUNC5(regs) ? "n" : "ff",
		FUNC0(regs) ? "n" : "ff",
		processor_modes[FUNC10(regs)],
		isa_modes[FUNC6(regs)],
		FUNC2() == FUNC1() ? "kernel" : "user");
#ifdef CONFIG_CPU_CP15
	{
		unsigned int ctrl;

		buf[0] = '\0';
#ifdef CONFIG_CPU_CP15_MMU
		{
			unsigned int transbase, dac;
			asm("mrc p15, 0, %0, c2, c0\n\t"
			    "mrc p15, 0, %1, c3, c0\n"
			    : "=r" (transbase), "=r" (dac));
			snprintf(buf, sizeof(buf), "  Table: %08x  DAC: %08x",
			  	transbase, dac);
		}
#endif
		asm("mrc p15, 0, %0, c1, c0\n" : "=r" (ctrl));

		printk("Control: %08x%s\n", ctrl, buf);
	}
#endif
}