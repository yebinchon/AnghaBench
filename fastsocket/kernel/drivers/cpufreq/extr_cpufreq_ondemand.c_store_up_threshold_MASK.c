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
struct kobject {int dummy; } ;
struct attribute {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {unsigned int up_threshold; } ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned int MAX_FREQUENCY_UP_THRESHOLD ; 
 unsigned int MIN_FREQUENCY_UP_THRESHOLD ; 
 int /*<<< orphan*/  dbs_mutex ; 
 TYPE_1__ dbs_tuners_ins ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,char*,unsigned int*) ; 

__attribute__((used)) static ssize_t FUNC3(struct kobject *a, struct attribute *b,
				  const char *buf, size_t count)
{
	unsigned int input;
	int ret;
	ret = FUNC2(buf, "%u", &input);

	if (ret != 1 || input > MAX_FREQUENCY_UP_THRESHOLD ||
			input < MIN_FREQUENCY_UP_THRESHOLD) {
		return -EINVAL;
	}

	FUNC0(&dbs_mutex);
	dbs_tuners_ins.up_threshold = input;
	FUNC1(&dbs_mutex);

	return count;
}