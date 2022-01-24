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
typedef  int u8 ;
struct cpufreq_freqs {scalar_t__ cpu; int /*<<< orphan*/  new; int /*<<< orphan*/  old; } ;
struct TYPE_2__ {int index; int /*<<< orphan*/  frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ_POSTCHANGE ; 
 int /*<<< orphan*/  CPUFREQ_PRECHANGE ; 
 int* cpuctl ; 
 int /*<<< orphan*/  FUNC0 (struct cpufreq_freqs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sc520_freq_table ; 

__attribute__((used)) static void FUNC5(unsigned int state)
{

	struct cpufreq_freqs	freqs;
	u8 clockspeed_reg;

	freqs.old = FUNC4(0);
	freqs.new = sc520_freq_table[state].frequency;
	freqs.cpu = 0; /* AMD Elan is UP */

	FUNC0(&freqs, CPUFREQ_PRECHANGE);

	FUNC1("attempting to set frequency to %i kHz\n",
			sc520_freq_table[state].frequency);

	FUNC2();

	clockspeed_reg = *cpuctl & ~0x03;
	*cpuctl = clockspeed_reg | sc520_freq_table[state].index;

	FUNC3();

	FUNC0(&freqs, CPUFREQ_POSTCHANGE);
}