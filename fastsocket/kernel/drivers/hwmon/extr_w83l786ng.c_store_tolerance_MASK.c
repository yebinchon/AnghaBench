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
typedef  int /*<<< orphan*/  u32 ;
struct w83l786ng_data {int* tolerance; int /*<<< orphan*/  update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  W83L786NG_REG_TOLERANCE ; 
 struct w83l786ng_data* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (struct device*) ; 
 TYPE_1__* FUNC6 (struct device_attribute*) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t count)
{
	int nr = FUNC6(attr)->index;
	struct i2c_client *client = FUNC5(dev);
	struct w83l786ng_data *data = FUNC1(client);
	u32 val;
	u8 tol_tmp, tol_mask;

	val = FUNC4(buf, NULL, 10);

	FUNC2(&data->update_lock);
	tol_mask = FUNC7(client,
	    W83L786NG_REG_TOLERANCE) & ((nr == 1) ? 0x0f : 0xf0);
	tol_tmp = FUNC0(val, 0, 15);
	tol_tmp &= 0x0f;
	data->tolerance[nr] = tol_tmp;
	if (nr == 1) {
		tol_tmp <<= 4;
	}

	FUNC8(client, W83L786NG_REG_TOLERANCE,
			      tol_mask | tol_tmp);
	FUNC3(&data->update_lock);
	return count;
}