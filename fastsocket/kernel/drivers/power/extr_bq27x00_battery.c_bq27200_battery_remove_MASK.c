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
struct TYPE_2__ {struct bq27x00_device_info* name; } ;
struct bq27x00_device_info {int /*<<< orphan*/  id; TYPE_1__ bat; } ;

/* Variables and functions */
 int /*<<< orphan*/  battery_id ; 
 int /*<<< orphan*/  battery_mutex ; 
 struct bq27x00_device_info* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bq27x00_device_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client)
{
	struct bq27x00_device_info *di = FUNC0(client);

	FUNC5(&di->bat);

	FUNC2(di->bat.name);

	FUNC3(&battery_mutex);
	FUNC1(&battery_id, di->id);
	FUNC4(&battery_mutex);

	FUNC2(di);

	return 0;
}