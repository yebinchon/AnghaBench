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
struct tmp421_data {int* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct tmp421_data* FUNC1 (struct device*) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
			  struct device_attribute *devattr, char *buf)
{
	int index = FUNC2(devattr)->index;
	struct tmp421_data *data = FUNC1(dev);

	/*
	 * The OPEN bit signals a fault. This is bit 0 of the temperature
	 * register (low byte).
	 */
	if (data->temp[index] & 0x01)
		return FUNC0(buf, "1\n");
	else
		return FUNC0(buf, "0\n");
}