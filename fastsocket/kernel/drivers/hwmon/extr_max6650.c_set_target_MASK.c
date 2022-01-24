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
struct max6650_data {int speed; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  config; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAN_RPM_MAX ; 
 int /*<<< orphan*/  FAN_RPM_MIN ; 
 int /*<<< orphan*/  MAX6650_REG_SPEED ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int clock ; 
 struct max6650_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev, struct device_attribute *devattr,
			 const char *buf, size_t count)
{
	struct i2c_client *client = FUNC7(dev);
	struct max6650_data *data = FUNC2(client);
	int rpm = FUNC6(buf, NULL, 10);
	int kscale, ktach;

	rpm = FUNC1(rpm, FAN_RPM_MIN, FAN_RPM_MAX);

	/*
	* Divide the required speed by 60 to get from rpm to rps, then
	* use the datasheet equation:
	*
	*     KTACH = [(fCLK x KSCALE) / (256 x FanSpeed)] - 1
	*/

	FUNC4(&data->update_lock);

	kscale = FUNC0(data->config);
	ktach = ((clock * kscale) / (256 * rpm / 60)) - 1;
	if (ktach < 0)
		ktach = 0;
	if (ktach > 255)
		ktach = 255;
	data->speed = ktach;

	FUNC3(client, MAX6650_REG_SPEED, data->speed);

	FUNC5(&data->update_lock);

	return count;
}