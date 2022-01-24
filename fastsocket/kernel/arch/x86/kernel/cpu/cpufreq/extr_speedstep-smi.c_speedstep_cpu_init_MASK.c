#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  transition_latency; } ;
struct cpufreq_policy {scalar_t__ cpu; unsigned int cur; TYPE_1__ cpuinfo; } ;
struct TYPE_6__ {unsigned int frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_ETERNAL ; 
 int EINVAL ; 
 int ENODEV ; 
 size_t SPEEDSTEP_HIGH ; 
 size_t SPEEDSTEP_LOW ; 
 int FUNC0 (struct cpufreq_policy*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_2__* speedstep_freqs ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int*,unsigned int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  speedstep_processor ; 
 int /*<<< orphan*/  speedstep_set_state ; 
 int FUNC5 (unsigned int*,unsigned int*) ; 
 int FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct cpufreq_policy *policy)
{
	int result;
	unsigned int speed, state;
	unsigned int *low, *high;

	/* capability check */
	if (policy->cpu != 0)
		return -ENODEV;

	result = FUNC6();
	if (result) {
		FUNC2("fails in aquiring ownership of a SMI interface.\n");
		return -EINVAL;
	}

	/* detect low and high frequency */
	low = &speedstep_freqs[SPEEDSTEP_LOW].frequency;
	high = &speedstep_freqs[SPEEDSTEP_HIGH].frequency;

	result = FUNC5(low, high);
	if (result) {
		/* fall back to speedstep_lib.c dection mechanism:
		 * try both states out */
		FUNC2("could not detect low and high frequencies "
				"by SMI call.\n");
		result = FUNC3(speedstep_processor,
				low, high,
				NULL,
				&speedstep_set_state);

		if (result) {
			FUNC2("could not detect two different speeds"
					" -- aborting.\n");
			return result;
		} else
			FUNC2("workaround worked.\n");
	}

	/* get current speed setting */
	state = FUNC4();
	speed = speedstep_freqs[state].frequency;

	FUNC2("currently at %s speed setting - %i MHz\n",
		(speed == speedstep_freqs[SPEEDSTEP_LOW].frequency)
		? "low" : "high",
		(speed / 1000));

	/* cpuinfo and default policy values */
	policy->cpuinfo.transition_latency = CPUFREQ_ETERNAL;
	policy->cur = speed;

	result = FUNC0(policy, speedstep_freqs);
	if (result)
		return result;

	FUNC1(speedstep_freqs, policy->cpu);

	return 0;
}