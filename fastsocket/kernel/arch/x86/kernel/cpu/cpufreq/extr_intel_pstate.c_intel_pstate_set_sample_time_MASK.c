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
struct cpudata {int /*<<< orphan*/  timer; TYPE_1__* pstate_policy; } ;
struct TYPE_2__ {int sample_rate_ms; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct cpudata *cpu)
{
	int sample_time, delay;

	sample_time = cpu->pstate_policy->sample_rate_ms;
	delay = FUNC1(sample_time);
	FUNC0(&cpu->timer, jiffies + delay);
}