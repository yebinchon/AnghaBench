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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {unsigned int gpio2; } ;
struct atxp1_data {scalar_t__ valid; TYPE_1__ reg; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATXP1_GPIO2 ; 
 struct atxp1_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
	struct atxp1_data *data;
	struct i2c_client *client;
	unsigned int value;

	client = FUNC4(dev);
	data = FUNC0(dev);

	value = FUNC3(buf, NULL, 16) & 0xff;

	if (value != data->reg.gpio2) {
		FUNC1(dev, "Writing 0x%x to GPIO1.\n", value);

		FUNC2(client, ATXP1_GPIO2, value);

		data->valid = 0;
	}

	return count;
}