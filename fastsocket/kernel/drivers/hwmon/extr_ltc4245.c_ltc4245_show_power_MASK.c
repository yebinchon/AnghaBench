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
struct sensor_device_attribute {scalar_t__ index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int FUNC0 (int const) ; 
 unsigned int FUNC1 (struct device*,scalar_t__) ; 
 int FUNC2 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,unsigned int const) ; 
 struct sensor_device_attribute* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				  struct device_attribute *da,
				  char *buf)
{
	struct sensor_device_attribute *attr = FUNC4(da);
	const unsigned int curr = FUNC1(dev, attr->index);
	const int output_voltage = FUNC2(dev, attr->index+1);

	/* current in mA * voltage in mV == power in uW */
	const unsigned int power = FUNC0(output_voltage * curr);

	return FUNC3(buf, PAGE_SIZE, "%u\n", power);
}