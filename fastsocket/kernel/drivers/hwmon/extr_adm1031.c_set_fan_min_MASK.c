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
struct adm1031_data {int* fan_min; int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * fan_div; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct adm1031_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			   const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct adm1031_data *data = FUNC4(client);
	int nr = FUNC9(attr)->index;
	int val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	if (val) {
		data->fan_min[nr] =
			FUNC2(val, FUNC1(data->fan_div[nr]));
	} else {
		data->fan_min[nr] = 0xff;
	}
	FUNC3(client, FUNC0(nr), data->fan_min[nr]);
	FUNC6(&data->update_lock);
	return count;
}