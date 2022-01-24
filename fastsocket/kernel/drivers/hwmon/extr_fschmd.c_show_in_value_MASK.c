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
struct fschmd_data {int kind; int* volt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int* dmi_mult ; 
 int* dmi_offset ; 
 int dmi_vref ; 
 int fscher ; 
 struct fschmd_data* FUNC0 (struct device*) ; 
 int fschrc ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int const) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *devattr, char *buf)
{
	const int max_reading[3] = { 14200, 6600, 3300 };
	int index = FUNC2(devattr)->index;
	struct fschmd_data *data = FUNC0(dev);

	/* fscher / fschrc - 1 as data->kind is an array index, not a chips */
	if (data->kind == (fscher - 1) || data->kind >= (fschrc - 1))
		return FUNC1(buf, "%d\n", (data->volt[index] * dmi_vref *
			dmi_mult[index]) / 255 + dmi_offset[index]);
	else
		return FUNC1(buf, "%d\n", (data->volt[index] *
			max_reading[index] + 128) / 255);
}