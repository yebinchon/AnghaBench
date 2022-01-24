#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {struct ds2782_info* name; } ;
struct ds2782_info {TYPE_1__ battery; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,struct ds2782_info*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct i2c_client*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct ds2782_info* FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ds2782_info*) ; 
 struct ds2782_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
				const struct i2c_device_id *id)
{
	struct ds2782_info *info;
	int ret;
	int num;

	/* Get an ID for this battery */
	ret = FUNC4(&battery_id, GFP_KERNEL);
	if (ret == 0) {
		ret = -ENOMEM;
		goto fail_id;
	}

	FUNC9(&battery_lock);
	ret = FUNC3(&battery_id, client, &num);
	FUNC10(&battery_lock);
	if (ret < 0)
		goto fail_id;

	info = FUNC8(sizeof(*info), GFP_KERNEL);
	if (!info) {
		ret = -ENOMEM;
		goto fail_info;
	}

	info->battery.name = FUNC6(GFP_KERNEL, "ds2782-%d", num);
	if (!info->battery.name) {
		ret = -ENOMEM;
		goto fail_name;
	}

	FUNC2(client, info);
	info->client = client;
	FUNC1(&info->battery);

	ret = FUNC11(&client->dev, &info->battery);
	if (ret) {
		FUNC0(&client->dev, "failed to register battery\n");
		goto fail_register;
	}

	return 0;

fail_register:
	FUNC7(info->battery.name);
fail_name:
	FUNC2(client, info);
	FUNC7(info);
fail_info:
	FUNC9(&battery_lock);
	FUNC5(&battery_id, num);
	FUNC10(&battery_lock);
fail_id:
	return ret;
}