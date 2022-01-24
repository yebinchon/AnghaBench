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
struct tmp421_data {int config; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int TMP421_CONFIG_RANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct tmp421_data* FUNC5 (struct device*) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	int index = FUNC6(devattr)->index;
	struct tmp421_data *data = FUNC5(dev);
	int temp;

	FUNC0(&data->update_lock);
	if (data->config & TMP421_CONFIG_RANGE)
		temp = FUNC4(data->temp[index]);
	else
		temp = FUNC3(data->temp[index]);
	FUNC1(&data->update_lock);

	return FUNC2(buf, "%d\n", temp);
}