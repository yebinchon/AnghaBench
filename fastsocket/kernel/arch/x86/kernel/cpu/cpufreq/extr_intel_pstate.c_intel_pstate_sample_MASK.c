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
typedef  void* u64 ;
struct cpudata {scalar_t__ prev_idle_time_us; int sample_ptr; void* prev_mperf; void* prev_aperf; void* prev_sample; TYPE_1__* samples; int /*<<< orphan*/  cpu; } ;
typedef  void* ktime_t ;
struct TYPE_2__ {void* mperf; void* aperf; void* idletime_us; int /*<<< orphan*/  duration_us; void* end_time; void* start_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_APERF ; 
 int /*<<< orphan*/  MSR_IA32_MPERF ; 
 int SAMPLE_COUNT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cpudata*,TYPE_1__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline void FUNC5(struct cpudata *cpu)
{
	ktime_t now;
	u64 idle_time_us;
	u64 aperf, mperf;

	now = FUNC2();
	idle_time_us = FUNC0(cpu->cpu, NULL);

	FUNC4(MSR_IA32_APERF, aperf);
	FUNC4(MSR_IA32_MPERF, mperf);
	/* for the first sample, don't actually record a sample, just
	 * set the baseline */
	if (cpu->prev_idle_time_us > 0) {
		cpu->sample_ptr = (cpu->sample_ptr + 1) % SAMPLE_COUNT;
		cpu->samples[cpu->sample_ptr].start_time = cpu->prev_sample;
		cpu->samples[cpu->sample_ptr].end_time = now;
		cpu->samples[cpu->sample_ptr].duration_us =
			FUNC3(now, cpu->prev_sample);
		cpu->samples[cpu->sample_ptr].idletime_us =
			idle_time_us - cpu->prev_idle_time_us;

		cpu->samples[cpu->sample_ptr].aperf = aperf;
		cpu->samples[cpu->sample_ptr].mperf = mperf;
		cpu->samples[cpu->sample_ptr].aperf -= cpu->prev_aperf;
		cpu->samples[cpu->sample_ptr].mperf -= cpu->prev_mperf;

		FUNC1(cpu, &cpu->samples[cpu->sample_ptr]);
	}

	cpu->prev_sample = now;
	cpu->prev_idle_time_us = idle_time_us;
	cpu->prev_aperf = aperf;
	cpu->prev_mperf = mperf;
}