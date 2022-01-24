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
typedef  int /*<<< orphan*/  uint32_t ;
struct pt_regs {unsigned int cp0_cause; char** regs; char* acx; char* hi; char* lo; int cp0_status; char* cp0_badvaddr; scalar_t__ cp0_epc; } ;
struct TYPE_2__ {scalar_t__ isa_level; } ;

/* Variables and functions */
 unsigned int CAUSEB_EXCCODE ; 
 unsigned int CAUSEF_EXCCODE ; 
#define  KSU_KERNEL 130 
#define  KSU_SUPERVISOR 129 
#define  KSU_USER 128 
 scalar_t__ MIPS_CPU_ISA_I ; 
 int ST0_ERL ; 
 int ST0_EXL ; 
 int ST0_IE ; 
 int ST0_IEC ; 
 int ST0_IEO ; 
 int ST0_IEP ; 
 int ST0_KSU ; 
 int ST0_KUC ; 
 int ST0_KUO ; 
 int ST0_KUP ; 
 int ST0_KX ; 
 int ST0_SX ; 
 int ST0_UX ; 
 char* FUNC0 () ; 
 TYPE_1__ current_cpu_data ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int const FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(const struct pt_regs *regs)
{
	const int field = 2 * sizeof(unsigned long);
	unsigned int cause = regs->cp0_cause;
	int i;

	FUNC2("Cpu %d\n", FUNC4());

	/*
	 * Saved main processor registers
	 */
	for (i = 0; i < 32; ) {
		if ((i % 4) == 0)
			FUNC2("$%2d   :", i);
		if (i == 0)
			FUNC2(" %0*lx", field, 0UL);
		else if (i == 26 || i == 27)
			FUNC2(" %*s", field, "");
		else
			FUNC2(" %0*lx", field, regs->regs[i]);

		i++;
		if ((i % 4) == 0)
			FUNC2("\n");
	}

#ifdef CONFIG_CPU_HAS_SMARTMIPS
	printk("Acx    : %0*lx\n", field, regs->acx);
#endif
	FUNC2("Hi    : %0*lx\n", field, regs->hi);
	FUNC2("Lo    : %0*lx\n", field, regs->lo);

	/*
	 * Saved cp0 registers
	 */
	FUNC2("epc   : %0*lx %pS\n", field, regs->cp0_epc,
	       (void *) regs->cp0_epc);
	FUNC2("    %s\n", FUNC1());
	FUNC2("ra    : %0*lx %pS\n", field, regs->regs[31],
	       (void *) regs->regs[31]);

	FUNC2("Status: %08x    ", (uint32_t) regs->cp0_status);

	if (current_cpu_data.isa_level == MIPS_CPU_ISA_I) {
		if (regs->cp0_status & ST0_KUO)
			FUNC2("KUo ");
		if (regs->cp0_status & ST0_IEO)
			FUNC2("IEo ");
		if (regs->cp0_status & ST0_KUP)
			FUNC2("KUp ");
		if (regs->cp0_status & ST0_IEP)
			FUNC2("IEp ");
		if (regs->cp0_status & ST0_KUC)
			FUNC2("KUc ");
		if (regs->cp0_status & ST0_IEC)
			FUNC2("IEc ");
	} else {
		if (regs->cp0_status & ST0_KX)
			FUNC2("KX ");
		if (regs->cp0_status & ST0_SX)
			FUNC2("SX ");
		if (regs->cp0_status & ST0_UX)
			FUNC2("UX ");
		switch (regs->cp0_status & ST0_KSU) {
		case KSU_USER:
			FUNC2("USER ");
			break;
		case KSU_SUPERVISOR:
			FUNC2("SUPERVISOR ");
			break;
		case KSU_KERNEL:
			FUNC2("KERNEL ");
			break;
		default:
			FUNC2("BAD_MODE ");
			break;
		}
		if (regs->cp0_status & ST0_ERL)
			FUNC2("ERL ");
		if (regs->cp0_status & ST0_EXL)
			FUNC2("EXL ");
		if (regs->cp0_status & ST0_IE)
			FUNC2("IE ");
	}
	FUNC2("\n");

	FUNC2("Cause : %08x\n", cause);

	cause = (cause & CAUSEF_EXCCODE) >> CAUSEB_EXCCODE;
	if (1 <= cause && cause <= 5)
		FUNC2("BadVA : %0*lx\n", field, regs->cp0_badvaddr);

	FUNC2("PrId  : %08x (%s)\n", FUNC3(),
	       FUNC0());
}