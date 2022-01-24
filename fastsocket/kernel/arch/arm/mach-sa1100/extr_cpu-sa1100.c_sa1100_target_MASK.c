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
struct cpufreq_policy {unsigned int max; unsigned int min; } ;
struct cpufreq_freqs {unsigned int old; unsigned int new; scalar_t__ cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
#define  CPUFREQ_RELATION_H 129 
#define  CPUFREQ_RELATION_L 128 
 unsigned int PPCR ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct cpufreq_policy *policy,
			 unsigned int target_freq,
			 unsigned int relation)
{
	unsigned int cur = FUNC3(0);
	unsigned int new_ppcr;

	struct cpufreq_freqs freqs;
	switch(relation){
	case CPUFREQ_RELATION_L:
		new_ppcr = FUNC2(target_freq);
		if (FUNC4(new_ppcr) > policy->max)
			new_ppcr--;
		break;
	case CPUFREQ_RELATION_H:
		new_ppcr = FUNC2(target_freq);
		if ((FUNC4(new_ppcr) > target_freq) &&
		    (FUNC4(new_ppcr - 1) >= policy->min))
			new_ppcr--;
		break;
	}

	freqs.old = cur;
	freqs.new = FUNC4(new_ppcr);
	freqs.cpu = 0;

	FUNC0(&freqs, CPUFREQ_PRECHANGE);

	if (freqs.new > cur)
		FUNC1(cur, freqs.new);

	PPCR = new_ppcr;

	if (freqs.new < cur)
		FUNC1(cur, freqs.new);

	FUNC0(&freqs, CPUFREQ_POSTCHANGE);

	return 0;
}