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
struct i2c_driver {int (* suspend ) (struct i2c_client*,int /*<<< orphan*/ ) ;} ;
struct i2c_client {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct i2c_client* FUNC0 (struct device*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct i2c_driver* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, pm_message_t mesg)
{
	struct i2c_client *client = FUNC0(dev);
	struct i2c_driver *driver;

	if (!client || !dev->driver)
		return 0;
	driver = FUNC2(dev->driver);
	if (!driver->suspend)
		return 0;
	return driver->suspend(client, mesg);
}