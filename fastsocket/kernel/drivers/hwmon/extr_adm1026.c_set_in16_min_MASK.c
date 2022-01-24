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
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int /*<<< orphan*/  update_lock; int /*<<< orphan*/ * in_min; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/ * ADM1026_REG_IN_MIN ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 scalar_t__ NEG12_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adm1026_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC6 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct i2c_client *client = FUNC6(dev);
	struct adm1026_data *data = FUNC2(client);
	int val = FUNC5(buf, NULL, 10);

	FUNC3(&data->update_lock);
	data->in_min[16] = FUNC0(16, val + NEG12_OFFSET);
	FUNC1(client, ADM1026_REG_IN_MIN[16], data->in_min[16]);
	FUNC4(&data->update_lock);
	return count;
}