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
struct TYPE_2__ {int /*<<< orphan*/  sampling_rate; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  dbs_mutex ; 
 TYPE_1__ dbs_tuners_ins ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  min_sampling_rate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC4(struct cpufreq_policy *unused,
		const char *buf, size_t count)
{
	unsigned int input;
	int ret;
	ret = FUNC3(buf, "%u", &input);

	if (ret != 1)
		return -EINVAL;

	FUNC1(&dbs_mutex);
	dbs_tuners_ins.sampling_rate = FUNC0(input, min_sampling_rate);
	FUNC2(&dbs_mutex);

	return count;
}