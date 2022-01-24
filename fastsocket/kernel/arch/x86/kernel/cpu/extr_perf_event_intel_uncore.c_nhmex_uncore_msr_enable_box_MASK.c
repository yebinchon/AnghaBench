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
typedef  unsigned long long u64 ;
struct intel_uncore_box {int dummy; } ;

/* Variables and functions */
 unsigned long long NHMEX_W_PMON_GLOBAL_FIXED_EN ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned long long) ; 
 unsigned int FUNC1 (struct intel_uncore_box*) ; 
 scalar_t__ FUNC2 (struct intel_uncore_box*) ; 
 unsigned long long FUNC3 (struct intel_uncore_box*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned long long) ; 

__attribute__((used)) static void FUNC5(struct intel_uncore_box *box)
{
	unsigned msr = FUNC1(box);
	u64 config;

	if (msr) {
		FUNC0(msr, config);
		config |= (1ULL << FUNC3(box)) - 1;
		/* WBox has a fixed counter */
		if (FUNC2(box))
			config |= NHMEX_W_PMON_GLOBAL_FIXED_EN;
		FUNC4(msr, config);
	}
}