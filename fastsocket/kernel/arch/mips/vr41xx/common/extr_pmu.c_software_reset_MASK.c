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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONF_CM_CMASK ; 
 int /*<<< orphan*/  CONF_CM_UNCACHED ; 
#define  CPU_VR4122 130 
#define  CPU_VR4131 129 
#define  CPU_VR4133 128 
 int /*<<< orphan*/  PMUCNT2REG ; 
 int /*<<< orphan*/  SOFTRST ; 
 int ST0_BEV ; 
 int ST0_ERL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC7(void)
{
	uint16_t pmucnt2;

	switch (FUNC1()) {
	case CPU_VR4122:
	case CPU_VR4131:
	case CPU_VR4133:
		pmucnt2 = FUNC3(PMUCNT2REG);
		pmucnt2 |= SOFTRST;
		FUNC4(PMUCNT2REG, pmucnt2);
		break;
	default:
		FUNC5(ST0_BEV | ST0_ERL);
		FUNC0(CONF_CM_CMASK, CONF_CM_UNCACHED);
		FUNC2();
		FUNC6(0);
		__asm__("jr     %0"::"r"(0xbfc00000));
		break;
	}
}