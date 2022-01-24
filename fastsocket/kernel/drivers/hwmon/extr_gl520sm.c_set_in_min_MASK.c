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
typedef  int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int* in_min; int /*<<< orphan*/  update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/ * GL520_REG_IN_MIN ; 
 int FUNC0 (long) ; 
 int FUNC1 (long) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct gl520_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 long FUNC7 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 TYPE_1__* FUNC9 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC10(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct i2c_client *client = FUNC8(dev);
	struct gl520_data *data = FUNC4(client);
	int n = FUNC9(attr)->index;
	long v = FUNC7(buf, NULL, 10);
	u8 r;

	FUNC5(&data->update_lock);

	if (n == 0)
		r = FUNC1(v);
	else
		r = FUNC0(v);

	data->in_min[n] = r;

	if (n < 4)
		FUNC3(client, GL520_REG_IN_MIN[n],
				  (FUNC2(client, GL520_REG_IN_MIN[n])
				   & ~0xff) | r);
	else
		FUNC3(client, GL520_REG_IN_MIN[n], r);

	FUNC6(&data->update_lock);
	return count;
}