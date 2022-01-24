#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct lm93_data {int* vccp_limits; int /*<<< orphan*/  update_lock; TYPE_1__* block7; int /*<<< orphan*/ * vid; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int max; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,long) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 struct lm93_data* FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC10 (struct device*) ; 
 TYPE_2__* FUNC11 (struct device_attribute*) ; 
 scalar_t__* vccp_limit_type ; 

__attribute__((used)) static ssize_t FUNC12(struct device *dev, struct device_attribute *attr,
			    const char *buf, size_t count)
{
	int nr = (FUNC11(attr))->index;
	struct i2c_client *client = FUNC10(dev);
	struct lm93_data *data = FUNC5(client);
	u32 val = FUNC9(buf, NULL, 10);
	int vccp = nr - 6;
	long vid;

	FUNC7(&data->update_lock);
	if ((nr==6 || nr==7) && (vccp_limit_type[vccp])) {
		vid = FUNC4(data->vid[vccp]);
		data->vccp_limits[vccp] = (data->vccp_limits[vccp] & 0x0f) |
				FUNC0(val, 1, vid);
		FUNC6(client, FUNC3(vccp),
				data->vccp_limits[vccp]);
	}
	else {
		data->block7[nr].max = FUNC1(nr,val);
		FUNC6(client, FUNC2(nr),
				data->block7[nr].max);
	}
	FUNC8(&data->update_lock);
	return count;
}