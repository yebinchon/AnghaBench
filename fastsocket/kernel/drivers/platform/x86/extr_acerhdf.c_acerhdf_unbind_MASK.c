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
struct thermal_cooling_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct thermal_cooling_device* cl_dev ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct thermal_zone_device*,int /*<<< orphan*/ ,struct thermal_cooling_device*) ; 

__attribute__((used)) static int FUNC2(struct thermal_zone_device *thermal,
			  struct thermal_cooling_device *cdev)
{
	if (cdev != cl_dev)
		return 0;

	if (FUNC1(thermal, 0, cdev)) {
		FUNC0("error unbinding cooling dev\n");
		return -EINVAL;
	}
	return 0;
}