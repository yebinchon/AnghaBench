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
struct cpufreq_freqs {unsigned long new; unsigned int cpu; int /*<<< orphan*/  old; } ;
typedef  int /*<<< orphan*/  cpumask_t ;
struct TYPE_3__ {int /*<<< orphan*/  cpus_allowed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 unsigned long SAFARI_CFG_DIV_1 ; 
 unsigned long SAFARI_CFG_DIV_2 ; 
 unsigned long SAFARI_CFG_DIV_32 ; 
 unsigned long SAFARI_CFG_DIV_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned long) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

__attribute__((used)) static void FUNC9(unsigned int cpu, unsigned int index)
{
	unsigned long new_bits, new_freq, reg;
	cpumask_t cpus_allowed;
	struct cpufreq_freqs freqs;

	if (!FUNC1(cpu))
		return;

	cpus_allowed = current->cpus_allowed;
	FUNC6(current, FUNC3(cpu));

	new_freq = FUNC7(cpu) / 1000;
	switch (index) {
	case 0:
		new_bits = SAFARI_CFG_DIV_1;
		new_freq /= 1;
		break;
	case 1:
		new_bits = SAFARI_CFG_DIV_2;
		new_freq /= 2;
		break;
	case 2:
		new_bits = SAFARI_CFG_DIV_32;
		new_freq /= 32;
		break;

	default:
		FUNC0();
	};

	reg = FUNC5();

	freqs.old = FUNC4(cpu, reg);
	freqs.new = new_freq;
	freqs.cpu = cpu;
	FUNC2(&freqs, CPUFREQ_PRECHANGE);

	reg &= ~SAFARI_CFG_DIV_MASK;
	reg |= new_bits;
	FUNC8(reg);

	FUNC2(&freqs, CPUFREQ_POSTCHANGE);

	FUNC6(current, cpus_allowed);
}