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
typedef  int __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_LEVEL ; 
 int /*<<< orphan*/  MSR_IA32_PACKAGE_THERM_STATUS ; 
 int /*<<< orphan*/  MSR_IA32_THERM_STATUS ; 
 int /*<<< orphan*/  PACKAGE_LEVEL ; 
 int PACKAGE_THERM_STATUS_POWER_LIMIT ; 
 int PACKAGE_THERM_STATUS_PROCHOT ; 
 int /*<<< orphan*/  POWER_LIMIT_EVENT ; 
 int /*<<< orphan*/  THERMAL_THROTTLING_EVENT ; 
 int THERM_STATUS_POWER_LIMIT ; 
 int THERM_STATUS_PROCHOT ; 
 int /*<<< orphan*/  X86_FEATURE_PLN ; 
 int /*<<< orphan*/  X86_FEATURE_PTS ; 
 scalar_t__ int_pln_enable ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	__u64 msr_val;

	FUNC1(MSR_IA32_THERM_STATUS, msr_val);

	if (FUNC2(msr_val & THERM_STATUS_PROCHOT,
				THERMAL_THROTTLING_EVENT,
				CORE_LEVEL) != 0)
		FUNC0(msr_val);

	if (FUNC3(X86_FEATURE_PLN) && int_pln_enable)
		FUNC2(msr_val & THERM_STATUS_POWER_LIMIT,
					POWER_LIMIT_EVENT,
					CORE_LEVEL);

	if (FUNC3(X86_FEATURE_PTS)) {
		FUNC1(MSR_IA32_PACKAGE_THERM_STATUS, msr_val);
		FUNC2(msr_val & PACKAGE_THERM_STATUS_PROCHOT,
					THERMAL_THROTTLING_EVENT,
					PACKAGE_LEVEL);
		if (FUNC3(X86_FEATURE_PLN) && int_pln_enable)
			FUNC2(msr_val &
					PACKAGE_THERM_STATUS_POWER_LIMIT,
					POWER_LIMIT_EVENT,
					PACKAGE_LEVEL);
	}
}