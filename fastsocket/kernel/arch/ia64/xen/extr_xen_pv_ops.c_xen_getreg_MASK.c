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
#define  _IA64_REG_AR_EFLAG 133 
#define  _IA64_REG_AR_ITC 132 
#define  _IA64_REG_CR_ITM 131 
#define  _IA64_REG_CR_IVR 130 
#define  _IA64_REG_CR_TPR 129 
#define  _IA64_REG_PSR 128 
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 () ; 
 unsigned long FUNC2 () ; 
 unsigned long FUNC3 () ; 
 unsigned long FUNC4 () ; 
 unsigned long FUNC5 () ; 
 unsigned long FUNC6 () ; 

__attribute__((used)) static unsigned long FUNC7(int regnum)
{
	unsigned long res;

	switch (regnum) {
	case _IA64_REG_PSR:
		res = FUNC5();
		break;
#ifdef CONFIG_IA32_SUPPORT
	case _IA64_REG_AR_EFLAG:
		res = xen_get_eflag();
		break;
#endif
	case _IA64_REG_AR_ITC:
		res = FUNC2();
		break;
	case _IA64_REG_CR_ITM:
		res = FUNC3();
		break;
	case _IA64_REG_CR_IVR:
		res = FUNC4();
		break;
	case _IA64_REG_CR_TPR:
		res = FUNC6();
		break;
	default:
		res = FUNC0(regnum);
		break;
	}
	return res;
}