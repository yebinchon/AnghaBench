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
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cpuidle_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct cpuidle_device *dev)
{
	int ret;

	FUNC3(&cpuidle_lock);

	if ((ret = FUNC0(dev))) {
		FUNC4(&cpuidle_lock);
		return ret;
	}

	FUNC1(dev);
	FUNC2();

	FUNC4(&cpuidle_lock);

	return 0;

}