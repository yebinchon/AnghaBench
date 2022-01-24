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
struct TYPE_3__ {int /*<<< orphan*/  attrs; } ;
struct ics932s401_data {TYPE_1__ attrs; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_2__ dev; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct ics932s401_data*) ; 
 int /*<<< orphan*/  ics932s401_attr ; 
 int /*<<< orphan*/  FUNC2 (struct ics932s401_data*) ; 
 struct ics932s401_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct ics932s401_data *data;
	int err;

	data = FUNC3(sizeof(struct ics932s401_data), GFP_KERNEL);
	if (!data) {
		err = -ENOMEM;
		goto exit;
	}

	FUNC1(client, data);
	FUNC4(&data->lock);

	FUNC0(&client->dev, "%s chip found\n", client->name);

	/* Register sysfs hooks */
	data->attrs.attrs = ics932s401_attr;
	err = FUNC5(&client->dev.kobj, &data->attrs);
	if (err)
		goto exit_free;

	return 0;

exit_free:
	FUNC2(data);
exit:
	return err;
}