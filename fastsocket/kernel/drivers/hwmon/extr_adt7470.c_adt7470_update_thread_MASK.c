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
struct adt7470_data {int /*<<< orphan*/  auto_update_stop; int /*<<< orphan*/  auto_update_interval; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct adt7470_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct adt7470_data* FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void *p)
{
	struct i2c_client *client = p;
	struct adt7470_data *data = FUNC2(client);

	while (!FUNC3()) {
		FUNC5(&data->lock);
		FUNC0(client, data);
		FUNC6(&data->lock);
		if (FUNC3())
			break;
		FUNC4(data->auto_update_interval);
	}

	FUNC1(&data->auto_update_stop);
	return 0;
}