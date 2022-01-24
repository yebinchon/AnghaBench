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
struct cpufreq_freqs {unsigned long new; } ;
typedef  unsigned long __get_cpu_var ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_CONSTANT_TSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned long tsc_khz ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct cpufreq_freqs *freq = data;
	unsigned long khz = 0;

	if (data)
		khz = freq->new;
	else if (!FUNC0(X86_FEATURE_CONSTANT_TSC))
		khz = FUNC1(FUNC2());
	if (!khz)
		khz = tsc_khz;
	__get_cpu_var(cpu_tsc_khz) = khz;
}