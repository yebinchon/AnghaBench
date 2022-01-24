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
struct device {int dummy; } ;
struct TYPE_2__ {void* gpio2; void* gpio1; void* cpu_vid; void* vid; } ;
struct atxp1_data {int valid; int /*<<< orphan*/  update_lock; TYPE_1__ reg; scalar_t__ last_updated; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATXP1_CVID ; 
 int /*<<< orphan*/  ATXP1_GPIO1 ; 
 int /*<<< orphan*/  ATXP1_GPIO2 ; 
 int /*<<< orphan*/  ATXP1_VID ; 
 scalar_t__ HZ ; 
 struct atxp1_data* FUNC0 (struct i2c_client*) ; 
 void* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static struct atxp1_data * FUNC6(struct device *dev)
{
	struct i2c_client *client;
	struct atxp1_data *data;

	client = FUNC5(dev);
	data = FUNC0(client);

	FUNC2(&data->update_lock);

	if (FUNC4(jiffies, data->last_updated + HZ) || !data->valid) {

		/* Update local register data */
		data->reg.vid = FUNC1(client, ATXP1_VID);
		data->reg.cpu_vid = FUNC1(client, ATXP1_CVID);
		data->reg.gpio1 = FUNC1(client, ATXP1_GPIO1);
		data->reg.gpio2 = FUNC1(client, ATXP1_GPIO2);

		data->valid = 1;
	}

	FUNC3(&data->update_lock);

	return(data);
}