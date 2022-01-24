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
typedef  int /*<<< orphan*/  u32 ;
struct sensor_device_attribute_2 {int index; int nr; } ;
struct TYPE_2__ {int* offset; } ;
struct lm93_data {int sfc2; int /*<<< orphan*/  update_lock; TYPE_1__ block10; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM93_REG_SFC2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 struct lm93_data* FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 struct sensor_device_attribute_2* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	struct sensor_device_attribute_2 *s_attr = FUNC9(attr);
	int nr = s_attr->index;
	int ofs = s_attr->nr;
	struct i2c_client *client = FUNC8(dev);
	struct lm93_data *data = FUNC2(client);
	u32 val = FUNC7(buf, NULL, 10);

	FUNC5(&data->update_lock);
	/* force 0.5C/bit mode */
	data->sfc2 = FUNC3(client, LM93_REG_SFC2);
	data->sfc2 |= ((nr < 2) ? 0x10 : 0x20);
	FUNC4(client, LM93_REG_SFC2, data->sfc2);
	data->block10.offset[ofs] = FUNC1(
			data->block10.offset[ofs], val, nr, 1);
	FUNC4(client, FUNC0(ofs),
			data->block10.offset[ofs]);
	FUNC6(&data->update_lock);
	return count;
}