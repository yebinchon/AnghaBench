#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct lm85_data {int /*<<< orphan*/  update_lock; TYPE_1__* autofan; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int config; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct lm85_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 long FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 
 TYPE_2__* FUNC8 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev, struct device_attribute
		*attr, const char *buf, size_t count)
{
	int nr = FUNC8(attr)->index;
	struct i2c_client *client = FUNC7(dev);
	struct lm85_data *data = FUNC1(client);
	long val = FUNC6(buf, NULL, 10);
	u8 config;

	switch (val) {
	case 0:
		config = 3;
		break;
	case 1:
		config = 7;
		break;
	case 2:
		/* Here we have to choose arbitrarily one of the 5 possible
		   configurations; I go for the safest */
		config = 6;
		break;
	default:
		return -EINVAL;
	}

	FUNC4(&data->update_lock);
	data->autofan[nr].config = FUNC2(client,
		FUNC0(nr));
	data->autofan[nr].config = (data->autofan[nr].config & ~0xe0)
		| (config << 5);
	FUNC3(client, FUNC0(nr),
		data->autofan[nr].config);
	FUNC5(&data->update_lock);
	return count;
}