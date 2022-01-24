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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * temp_max; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,int,int) ; 
 struct adm1021_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_only ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_1__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			    struct device_attribute *devattr,
			    const char *buf, size_t count)
{
	int index = FUNC8(devattr)->index;
	struct i2c_client *client = FUNC7(dev);
	struct adm1021_data *data = FUNC2(client);
	long temp = FUNC6(buf, NULL, 10) / 1000;

	FUNC4(&data->update_lock);
	data->temp_max[index] = FUNC1(temp, -128, 127);
	if (!read_only)
		FUNC3(client, FUNC0(index),
					  data->temp_max[index]);
	FUNC5(&data->update_lock);

	return count;
}