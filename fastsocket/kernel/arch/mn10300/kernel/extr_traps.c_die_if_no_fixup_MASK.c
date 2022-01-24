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
typedef  int uint8_t ;
struct pt_regs {scalar_t__ pc; } ;
typedef  enum exception_code { ____Placeholder_exception_code } exception_code ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_BREAKPOINT ; 
 int /*<<< orphan*/  DIE_GPF ; 
#define  EXCEP_BUSERROR 140 
#define  EXCEP_DAERROR 139 
#define  EXCEP_DATINSACC 138 
#define  EXCEP_DTLBMISS 137 
#define  EXCEP_IAERROR 136 
#define  EXCEP_ILLDATACC 135 
#define  EXCEP_IOINSACC 134 
#define  EXCEP_ITLBMISS 133 
#define  EXCEP_MEMERR 132 
#define  EXCEP_MISALIGN 131 
#define  EXCEP_PRIVDATACC 130 
#define  EXCEP_PRIVINSACC 129 
#define  EXCEP_UNIMPINS 128 
 int /*<<< orphan*/  FUNC0 (char const*,struct pt_regs*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*) ; 
 scalar_t__ FUNC2 (struct pt_regs*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,struct pt_regs*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct pt_regs*) ; 

int FUNC6(const char *str, struct pt_regs *regs,
		    enum exception_code code)
{
	if (FUNC5(regs))
		return 0;

	FUNC4(code);

	switch (code) {
		/* see if we can fixup the kernel accessing memory */
	case EXCEP_ITLBMISS:
	case EXCEP_DTLBMISS:
	case EXCEP_IAERROR:
	case EXCEP_DAERROR:
	case EXCEP_MEMERR:
	case EXCEP_MISALIGN:
	case EXCEP_BUSERROR:
	case EXCEP_ILLDATACC:
	case EXCEP_IOINSACC:
	case EXCEP_PRIVINSACC:
	case EXCEP_PRIVDATACC:
	case EXCEP_DATINSACC:
		if (FUNC1(regs))
			return 1;
	case EXCEP_UNIMPINS:
		if (regs->pc && *(uint8_t *)regs->pc == 0xff)
			if (FUNC3(DIE_BREAKPOINT, str, regs, code, 0, 0))
				return 1;
		break;
	default:
		break;
	}

	/* see if gdbstub wants to deal with it */
#ifdef CONFIG_GDBSTUB
	if (gdbstub_intercept(regs, code))
		return 1;
#endif

	if (FUNC3(DIE_GPF, str, regs, code, 0, 0))
		return 1;

	/* make the process die as the last resort */
	FUNC0(str, regs, code);
}