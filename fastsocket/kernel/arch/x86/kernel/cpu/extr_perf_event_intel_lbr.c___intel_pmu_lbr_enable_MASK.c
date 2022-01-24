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
typedef  int u64 ;

/* Variables and functions */
 int DEBUGCTLMSR_FREEZE_LBRS_ON_PMI ; 
 int DEBUGCTLMSR_LBR ; 
 int /*<<< orphan*/  MSR_IA32_DEBUGCTLMSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void)
{
	u64 debugctl;

	FUNC0(MSR_IA32_DEBUGCTLMSR, debugctl);
	debugctl |= (DEBUGCTLMSR_LBR | DEBUGCTLMSR_FREEZE_LBRS_ON_PMI);
	FUNC1(MSR_IA32_DEBUGCTLMSR, debugctl);
}