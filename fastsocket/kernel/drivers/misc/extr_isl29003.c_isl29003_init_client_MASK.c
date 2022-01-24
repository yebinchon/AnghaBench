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
struct isl29003_data {int* reg_cache; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int ENODEV ; 
 struct isl29003_data* FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client)
{
	struct isl29003_data *data = FUNC1(client);
	int i;

	/* read all the registers once to fill the cache.
	 * if one of the reads fails, we consider the init failed */
	for (i = 0; i < FUNC0(data->reg_cache); i++) {
		int v = FUNC2(client, i);
		if (v < 0)
			return -ENODEV;

		data->reg_cache[i] = v;
	}

	/* set defaults */
	FUNC5(client, 0);
	FUNC6(client, 0);
	FUNC3(client, 0);
	FUNC4(client, 0);

	return 0;
}