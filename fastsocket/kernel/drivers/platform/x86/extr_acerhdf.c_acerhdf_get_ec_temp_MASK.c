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
struct thermal_zone_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thermal_zone_device*) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static int FUNC3(struct thermal_zone_device *thermal,
			       unsigned long *t)
{
	int temp, err = 0;

	FUNC0(thermal);

	err = FUNC1(&temp);
	if (err)
		return err;

	if (verbose)
		FUNC2("temp %d\n", temp);

	*t = temp;
	return 0;
}