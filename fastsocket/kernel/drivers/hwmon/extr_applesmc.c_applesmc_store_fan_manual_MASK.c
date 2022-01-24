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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FANS_MANUAL ; 
 int /*<<< orphan*/  applesmc_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
					 struct device_attribute *devattr,
					 const char *sysfsbuf, size_t count)
{
	int ret;
	u8 buffer[2];
	u32 input;
	u16 val;
	struct sensor_device_attribute *attr = FUNC5(devattr);

	input = FUNC4(sysfsbuf, NULL, 10);

	FUNC2(&applesmc_lock);

	ret = FUNC0(FANS_MANUAL, buffer, 2);
	val = (buffer[0] << 8 | buffer[1]);
	if (ret)
		goto out;

	if (input)
		val = val | (0x01 << attr->index);
	else
		val = val & ~(0x01 << attr->index);

	buffer[0] = (val >> 8) & 0xFF;
	buffer[1] = val & 0xFF;

	ret = FUNC1(FANS_MANUAL, buffer, 2);

out:
	FUNC3(&applesmc_lock);
	if (ret)
		return ret;
	else
		return count;
}