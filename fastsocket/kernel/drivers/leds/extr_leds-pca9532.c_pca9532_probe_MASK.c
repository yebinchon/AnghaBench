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
struct pca9532_platform_data {int dummy; } ;
struct pca9532_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {struct pca9532_platform_data* platform_data; } ;
struct i2c_client {TYPE_1__ dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pca9532_data* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct pca9532_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct pca9532_data*) ; 
 struct pca9532_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i2c_client*,struct pca9532_data*,struct pca9532_platform_data*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	struct pca9532_data *data = FUNC2(client);
	struct pca9532_platform_data *pca9532_pdata = client->dev.platform_data;
	int err;

	if (!pca9532_pdata)
		return -EIO;

	if (!FUNC1(client->adapter,
		I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC5(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC0(&client->dev, "setting platform data\n");
	FUNC3(client, data);
	data->client = client;
	FUNC6(&data->update_lock);

	err = FUNC7(client, data, pca9532_pdata);
	if (err) {
		FUNC4(data);
		FUNC3(client, NULL);
	}

	return err;
}