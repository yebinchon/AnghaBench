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
struct cpuidle_governor {scalar_t__ rating; int /*<<< orphan*/  governor_list; int /*<<< orphan*/  name; int /*<<< orphan*/  select; } ;
struct TYPE_2__ {scalar_t__ rating; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* cpuidle_curr_governor ; 
 int /*<<< orphan*/  cpuidle_governors ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_governor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct cpuidle_governor *gov)
{
	int ret = -EEXIST;

	if (!gov || !gov->select)
		return -EINVAL;

	FUNC3(&cpuidle_lock);
	if (FUNC0(gov->name) == NULL) {
		ret = 0;
		FUNC2(&gov->governor_list, &cpuidle_governors);
		if (!cpuidle_curr_governor ||
		    cpuidle_curr_governor->rating < gov->rating)
			FUNC1(gov);
	}
	FUNC4(&cpuidle_lock);

	return ret;
}