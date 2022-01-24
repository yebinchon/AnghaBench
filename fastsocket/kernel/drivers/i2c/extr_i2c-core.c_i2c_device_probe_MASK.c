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
struct i2c_driver {int (* probe ) (struct i2c_client*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  id_table; } ;
struct i2c_client {int flags; struct i2c_driver* driver; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int I2C_CLIENT_WAKE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct i2c_client*) ; 
 struct i2c_client* FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct i2c_client	*client = FUNC4(dev);
	struct i2c_driver	*driver;
	int status;

	if (!client)
		return 0;

	driver = FUNC6(dev->driver);
	if (!driver->probe || !driver->id_table)
		return -ENODEV;
	client->driver = driver;
	if (!FUNC1(&client->dev))
		FUNC2(&client->dev,
					client->flags & I2C_CLIENT_WAKE);
	FUNC0(dev, "probe\n");

	status = driver->probe(client, FUNC3(driver->id_table, client));
	if (status)
		client->driver = NULL;
	return status;
}