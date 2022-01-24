#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_freqs {unsigned long old; unsigned long new; unsigned int cpu; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int /*<<< orphan*/  HBIRD_ESTAR_MODE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 TYPE_1__* current ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (unsigned int) ; 
 unsigned long FUNC5 (unsigned int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(unsigned int cpu, unsigned int index)
{
	unsigned long new_bits, new_freq;
	unsigned long clock_tick, divisor, old_divisor, estar;
	cpumask_t cpus_allowed;
	struct cpufreq_freqs freqs;

	if (!FUNC0(cpu))
		return;

	cpus_allowed = current->cpus_allowed;
	FUNC7(current, FUNC2(cpu));

	new_freq = clock_tick = FUNC8(cpu) / 1000;
	new_bits = FUNC5(index);
	divisor = FUNC4(index);
	new_freq /= divisor;

	estar = FUNC6(HBIRD_ESTAR_MODE_ADDR);

	old_divisor = FUNC3(estar);

	freqs.old = clock_tick / old_divisor;
	freqs.new = new_freq;
	freqs.cpu = cpu;
	FUNC1(&freqs, CPUFREQ_PRECHANGE);

	if (old_divisor != divisor)
		FUNC9(estar, new_bits, clock_tick * 1000,
				old_divisor, divisor);

	FUNC1(&freqs, CPUFREQ_POSTCHANGE);

	FUNC7(current, cpus_allowed);
}