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
struct cpufreq_policy {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {unsigned int freq_step; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  dbs_mutex ; 
 TYPE_1__ dbs_tuners_ins ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct cpufreq_policy *policy,
		const char *buf, size_t count)
{
	unsigned int input;
	int ret;
	ret = FUNC2(buf, "%u", &input);

	if (ret != 1)
		return -EINVAL;

	if (input > 100)
		input = 100;

	/* no need to test here if freq_step is zero as the user might actually
	 * want this, they would be crazy though :) */
	FUNC0(&dbs_mutex);
	dbs_tuners_ins.freq_step = input;
	FUNC1(&dbs_mutex);

	return count;
}