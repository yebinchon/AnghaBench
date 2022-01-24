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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SENSOR_X ; 
 int /*<<< orphan*/  SENSOR_Y ; 
 int /*<<< orphan*/  SENSOR_Z ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	int ret;
	s16 x, y, z;

	FUNC1(&applesmc_lock);

	ret = FUNC0(SENSOR_X, &x);
	if (ret)
		goto out;
	ret = FUNC0(SENSOR_Y, &y);
	if (ret)
		goto out;
	ret = FUNC0(SENSOR_Z, &z);
	if (ret)
		goto out;

out:
	FUNC2(&applesmc_lock);
	if (ret)
		return ret;
	else
		return FUNC3(buf, PAGE_SIZE, "(%d,%d,%d)\n", x, y, z);
}