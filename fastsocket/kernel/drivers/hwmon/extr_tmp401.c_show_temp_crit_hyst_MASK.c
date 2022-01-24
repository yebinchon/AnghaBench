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
struct tmp401_data {int temp_crit_hyst; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  config; int /*<<< orphan*/ * temp_crit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tmp401_data* FUNC4 (struct device*) ; 
 TYPE_1__* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
	struct device_attribute *devattr, char *buf)
{
	int temp, index = FUNC5(devattr)->index;
	struct tmp401_data *data = FUNC4(dev);

	FUNC0(&data->update_lock);
	temp = FUNC3(data->temp_crit[index],
						data->config);
	temp -= data->temp_crit_hyst * 1000;
	FUNC1(&data->update_lock);

	return FUNC2(buf, "%d\n", temp);
}