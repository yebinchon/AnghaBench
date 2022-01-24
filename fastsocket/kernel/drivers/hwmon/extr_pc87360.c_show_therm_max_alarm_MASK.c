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
struct pc87360_data {int* in_status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {unsigned int index; } ;

/* Variables and functions */
 int CHAN_ALM_MAX ; 
 struct pc87360_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 TYPE_1__* FUNC2 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *devattr, char *buf)
{
	struct pc87360_data *data = FUNC0(dev);
	unsigned nr = FUNC2(devattr)->index;

	return FUNC1(buf, "%u\n", !!(data->in_status[nr] & CHAN_ALM_MAX));
}