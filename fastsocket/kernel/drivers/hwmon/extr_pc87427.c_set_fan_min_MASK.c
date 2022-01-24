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
struct sensor_device_attribute {int index; } ;
struct pc87427_data {int* address; int /*<<< orphan*/  lock; int /*<<< orphan*/ * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FAN_STATUS_MONEN ; 
 size_t LD_FAN ; 
 scalar_t__ PC87427_REG_BANK ; 
 scalar_t__ PC87427_REG_FAN_MIN ; 
 scalar_t__ PC87427_REG_FAN_STATUS ; 
 struct pc87427_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct sensor_device_attribute* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute
			   *devattr, const char *buf, size_t count)
{
	struct pc87427_data *data = FUNC1(dev);
	struct sensor_device_attribute *attr = FUNC8(devattr);
	int nr = attr->index;
	unsigned long val = FUNC7(buf, NULL, 10);
	int iobase = data->address[LD_FAN];

	FUNC3(&data->lock);
	FUNC5(FUNC0(nr), iobase + PC87427_REG_BANK);
	/* The low speed limit registers are read-only while monitoring
	   is enabled, so we have to disable monitoring, then change the
	   limit, and finally enable monitoring again. */
	FUNC5(0, iobase + PC87427_REG_FAN_STATUS);
	data->fan_min[nr] = FUNC2(val);
	FUNC6(data->fan_min[nr], iobase + PC87427_REG_FAN_MIN);
	FUNC5(FAN_STATUS_MONEN, iobase + PC87427_REG_FAN_STATUS);
	FUNC4(&data->lock);

	return count;
}