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
struct TYPE_2__ {struct ds2782_info* name; } ;
struct ds2782_info {int /*<<< orphan*/  id; TYPE_1__ battery; } ;

/* Variables and functions */
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_lock ; 
 struct ds2782_info* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,struct ds2782_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ds2782_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct ds2782_info *info = FUNC0(client);

	FUNC6(&info->battery);
	FUNC3(info->battery.name);

	FUNC4(&battery_lock);
	FUNC2(&battery_id, info->id);
	FUNC5(&battery_lock);

	FUNC1(client, info);

	FUNC3(info);
	return 0;
}