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
typedef  int u32 ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  REG_HARDWARE_THERMAL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 struct sensor_device_attribute* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			      struct device_attribute *devattr, char *buf)
{
	struct sensor_device_attribute *attr = FUNC3(devattr);
	int show_hyst = attr->index;
	u32 regval;
	int value;

	FUNC0(FUNC2(dev),
			      REG_HARDWARE_THERMAL_CONTROL, &regval);
	value = ((regval >> 16) & 0x7f) * 500 + 52000;
	if (show_hyst)
		value -= ((regval >> 24) & 0xf) * 500;
	return FUNC1(buf, "%d\n", value);
}