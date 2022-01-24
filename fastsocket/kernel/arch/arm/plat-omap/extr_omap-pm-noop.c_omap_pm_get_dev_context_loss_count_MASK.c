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
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct device *dev)
{
	if (!dev) {
		FUNC0(1);
		return -EINVAL;
	};

	FUNC2("OMAP PM: returning context loss count for dev %s\n",
		 FUNC1(dev));

	/*
	 * Map the device to the powerdomain.  Return the powerdomain
	 * off counter.
	 */

	return 0;
}