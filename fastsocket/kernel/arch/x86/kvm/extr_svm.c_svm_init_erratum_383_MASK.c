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
typedef  unsigned long long u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int x86; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_AMD64_DC_CFG ; 
 TYPE_1__ boot_cpu_data ; 
 int erratum_383_found ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long long) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 low, high;
	int err;
	u64 val;

	/* Only Fam10h is affected */
	if (boot_cpu_data.x86 != 0x10)
		return;

	/* Use _safe variants to not break nested virtualization */
	val = FUNC1(MSR_AMD64_DC_CFG, &err);
	if (err)
		return;

	val |= (1ULL << 47);

	low  = FUNC0(val);
	high = FUNC3(val);

	FUNC2(MSR_AMD64_DC_CFG, low, high);

	erratum_383_found = true;
}