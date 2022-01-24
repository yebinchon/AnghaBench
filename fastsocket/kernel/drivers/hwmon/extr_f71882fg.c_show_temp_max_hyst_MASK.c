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
struct f71882fg_data {int* temp_hyst; int* temp_high; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 struct f71882fg_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* FUNC4 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute
	*devattr, char *buf)
{
	struct f71882fg_data *data = FUNC0(dev);
	int nr = FUNC4(devattr)->index;
	int temp_max_hyst;

	FUNC1(&data->update_lock);
	if (nr & 1)
		temp_max_hyst = data->temp_hyst[nr / 2] >> 4;
	else
		temp_max_hyst = data->temp_hyst[nr / 2] & 0x0f;
	temp_max_hyst = (data->temp_high[nr] - temp_max_hyst) * 1000;
	FUNC2(&data->update_lock);

	return FUNC3(buf, "%d\n", temp_max_hyst);
}