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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADM9240_REG_CHASSIS_CLEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
		struct device_attribute *attr,
		const char *buf, size_t count)
{
	struct i2c_client *client = FUNC3(dev);
	unsigned long val = FUNC2(buf, NULL, 10);

	if (val == 1) {
		FUNC1(client,
				ADM9240_REG_CHASSIS_CLEAR, 0x80);
		FUNC0(&client->dev, "chassis intrusion latch cleared\n");
	}
	return count;
}