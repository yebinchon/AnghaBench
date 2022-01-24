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
struct ics932s401_data {unsigned long sensors_last_updated; int sensors_valid; int* regs; int /*<<< orphan*/  lock; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NUM_MIRRORED_REGS ; 
 scalar_t__ SENSOR_REFRESH_INTERVAL ; 
 struct ics932s401_data* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,size_t) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t* regs_to_copy ; 
 scalar_t__ FUNC4 (unsigned long,scalar_t__) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static struct ics932s401_data *FUNC6(struct device *dev)
{
	struct i2c_client *client = FUNC5(dev);
	struct ics932s401_data *data = FUNC0(client);
	unsigned long local_jiffies = jiffies;
	int i, temp;

	FUNC2(&data->lock);
	if (FUNC4(local_jiffies, data->sensors_last_updated +
		SENSOR_REFRESH_INTERVAL)
		&& data->sensors_valid)
		goto out;

	/*
	 * Each register must be read as a word and then right shifted 8 bits.
	 * Not really sure why this is; setting the "byte count programming"
	 * register to 1 does not fix this problem.
	 */
	for (i = 0; i < NUM_MIRRORED_REGS; i++) {
		temp = FUNC1(client, regs_to_copy[i]);
		data->regs[regs_to_copy[i]] = temp >> 8;
	}

	data->sensors_last_updated = local_jiffies;
	data->sensors_valid = 1;

out:
	FUNC3(&data->lock);
	return data;
}