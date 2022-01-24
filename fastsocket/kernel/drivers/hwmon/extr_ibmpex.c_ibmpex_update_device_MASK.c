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
struct ibmpex_bmc_data {int valid; int num_sensors; int /*<<< orphan*/  lock; scalar_t__ last_updated; int /*<<< orphan*/  rx_msg_data; TYPE_1__* sensors; } ;
struct TYPE_2__ {void** values; int /*<<< orphan*/  in_use; } ;

/* Variables and functions */
 scalar_t__ REFRESH_INTERVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct ibmpex_bmc_data*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct ibmpex_bmc_data *data)
{
	int i, err;

	FUNC2(&data->lock);
	if (FUNC4(jiffies, data->last_updated + REFRESH_INTERVAL) &&
	    data->valid)
		goto out;

	for (i = 0; i < data->num_sensors; i++) {
		if (!data->sensors[i].in_use)
			continue;
		err = FUNC1(data, i);
		if (err)
			continue;
		data->sensors[i].values[0] =
			FUNC0(data->rx_msg_data, 16);
		data->sensors[i].values[1] =
			FUNC0(data->rx_msg_data, 18);
		data->sensors[i].values[2] =
			FUNC0(data->rx_msg_data, 20);
	}

	data->last_updated = jiffies;
	data->valid = 1;

out:
	FUNC3(&data->lock);
}