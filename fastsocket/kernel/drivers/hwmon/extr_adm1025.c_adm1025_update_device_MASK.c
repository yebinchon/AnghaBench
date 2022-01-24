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
struct device {int dummy; } ;
struct adm1025_data {int valid; int* in; int* in_min; int* in_max; int* temp; int* temp_min; int* temp_max; int alarms; int vid; int /*<<< orphan*/  update_lock; scalar_t__ last_updated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  ADM1025_REG_STATUS1 ; 
 int /*<<< orphan*/  ADM1025_REG_STATUS2 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ADM1025_REG_VID ; 
 int /*<<< orphan*/  ADM1025_REG_VID4 ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct adm1025_data* FUNC7 (struct i2c_client*) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 struct i2c_client* FUNC12 (struct device*) ; 

__attribute__((used)) static struct adm1025_data *FUNC13(struct device *dev)
{
	struct i2c_client *client = FUNC12(dev);
	struct adm1025_data *data = FUNC7(client);

	FUNC9(&data->update_lock);

	if (FUNC11(jiffies, data->last_updated + HZ * 2) || !data->valid) {
		int i;

		FUNC6(&client->dev, "Updating data.\n");
		for (i=0; i<6; i++) {
			data->in[i] = FUNC8(client,
				      FUNC0(i));
			data->in_min[i] = FUNC8(client,
					  FUNC2(i));
			data->in_max[i] = FUNC8(client,
					  FUNC1(i));
		}
		for (i=0; i<2; i++) {
			data->temp[i] = FUNC8(client,
					FUNC3(i));
			data->temp_min[i] = FUNC8(client,
					    FUNC5(i));
			data->temp_max[i] = FUNC8(client,
					    FUNC4(i));
		}
		data->alarms = FUNC8(client,
			       ADM1025_REG_STATUS1)
			     | (FUNC8(client,
				ADM1025_REG_STATUS2) << 8);
		data->vid = (FUNC8(client,
			     ADM1025_REG_VID) & 0x0f)
			  | ((FUNC8(client,
			      ADM1025_REG_VID4) & 0x01) << 4);

		data->last_updated = jiffies;
		data->valid = 1;
	}

	FUNC10(&data->update_lock);

	return data;
}