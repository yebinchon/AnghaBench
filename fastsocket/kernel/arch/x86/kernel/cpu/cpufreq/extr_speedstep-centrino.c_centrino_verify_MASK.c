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
struct cpufreq_policy {int /*<<< orphan*/  cpu; } ;
struct TYPE_2__ {int /*<<< orphan*/  op_points; } ;

/* Variables and functions */
 int /*<<< orphan*/  centrino_model ; 
 int FUNC0 (struct cpufreq_policy*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2 (struct cpufreq_policy *policy)
{
	return FUNC0(policy,
			FUNC1(centrino_model, policy->cpu)->op_points);
}