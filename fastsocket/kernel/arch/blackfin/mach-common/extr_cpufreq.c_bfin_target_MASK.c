#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {int dummy; } ;
struct cpufreq_freqs {unsigned long new; int /*<<< orphan*/  old; scalar_t__ cpu; } ;
typedef  int cycles_t ;
struct TYPE_5__ {unsigned long frequency; } ;
struct TYPE_4__ {unsigned int csel; unsigned int tscale; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int EINVAL ; 
 unsigned int SSEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int __bfin_cycles_mod ; 
 int /*<<< orphan*/  __bfin_cycles_off ; 
 TYPE_2__* bfin_freq_table ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (struct cpufreq_policy*,TYPE_2__*,unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 TYPE_1__* dpm_state_table ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int FUNC11(struct cpufreq_policy *policy,
			unsigned int target_freq, unsigned int relation)
{
	unsigned int index, plldiv, tscale;
	unsigned long flags, cclk_hz;
	struct cpufreq_freqs freqs;
	cycles_t cycles;

	if (FUNC5(policy, bfin_freq_table,
		 target_freq, relation, &index))
		return -EINVAL;

	cclk_hz = bfin_freq_table[index].frequency;

	freqs.old = FUNC1(0);
	freqs.new = cclk_hz;
	freqs.cpu = 0;

	FUNC10("cpufreq: changing cclk to %lu; target = %u, oldfreq = %u\n",
		 cclk_hz, target_freq, freqs.old);

	FUNC6(&freqs, CPUFREQ_PRECHANGE);
	FUNC9(flags);
		plldiv = (FUNC2() & SSEL) | dpm_state_table[index].csel;
		tscale = dpm_state_table[index].tscale;
		FUNC3(plldiv);
		/* we have to adjust the core timer, because it is using cclk */
		FUNC4(tscale);
		cycles = FUNC7();
		FUNC0();
	cycles += 10; /* ~10 cycles we lose after get_cycles() */
	__bfin_cycles_off += (cycles << __bfin_cycles_mod) - (cycles << index);
	__bfin_cycles_mod = index;
	FUNC8(flags);
	/* TODO: just test case for cycles clock source, remove later */
	FUNC10("cpufreq: done\n");
	FUNC6(&freqs, CPUFREQ_POSTCHANGE);

	return 0;
}