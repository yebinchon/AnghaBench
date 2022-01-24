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
struct tcm825x_sensor {int /*<<< orphan*/  v4l2_int_device; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int ENODEV ; 
 struct tcm825x_sensor* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	struct tcm825x_sensor *sensor = FUNC0(client);

	if (!client->adapter)
		return -ENODEV;	/* our client isn't attached */

	FUNC2(sensor->v4l2_int_device);
	FUNC1(client, NULL);

	return 0;
}