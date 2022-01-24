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
struct cpufreq_freqs {scalar_t__ old; scalar_t__ new; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int CPUFREQ_HIGH ; 
 int CPUFREQ_LOW ; 
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int /*<<< orphan*/  CPU_FTR_L3CR ; 
 unsigned long L3CR_L3E ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 scalar_t__ cur_freq ; 
 void* hi_freq ; 
 void* low_freq ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(int speed_mode, int notify)
{
	struct cpufreq_freqs freqs;
	unsigned long l3cr;
	static unsigned long prev_l3cr;

	freqs.old = cur_freq;
	freqs.new = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;
	freqs.cpu = FUNC5();

	if (freqs.old == freqs.new)
		return 0;

	if (notify)
		FUNC3(&freqs, CPUFREQ_PRECHANGE);
	if (speed_mode == CPUFREQ_LOW &&
	    FUNC2(CPU_FTR_L3CR)) {
		l3cr = FUNC0();
		if (l3cr & L3CR_L3E) {
			prev_l3cr = l3cr;
			FUNC1(0);
		}
	}
	FUNC4(speed_mode == CPUFREQ_LOW);
	if (speed_mode == CPUFREQ_HIGH &&
	    FUNC2(CPU_FTR_L3CR)) {
		l3cr = FUNC0();
		if ((prev_l3cr & L3CR_L3E) && l3cr != prev_l3cr)
			FUNC1(prev_l3cr);
	}
	if (notify)
		FUNC3(&freqs, CPUFREQ_POSTCHANGE);
	cur_freq = (speed_mode == CPUFREQ_HIGH) ? hi_freq : low_freq;

	return 0;
}