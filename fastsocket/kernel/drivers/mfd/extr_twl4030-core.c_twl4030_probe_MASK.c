#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twl4030_platform_data {scalar_t__ irq_base; scalar_t__ irq_end; scalar_t__ power; } ;
struct twl4030_client {int /*<<< orphan*/  xfer_lock; struct i2c_client* client; scalar_t__ address; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct twl4030_platform_data* platform_data; } ;
struct i2c_client {scalar_t__ irq; TYPE_1__ dev; int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; scalar_t__ addr; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  I2C_FUNC_I2C ; 
 unsigned int TWL4030_NUM_SLAVES ; 
 int FUNC0 (struct twl4030_platform_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int inuse ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct twl4030_client* twl4030_modules ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_client*) ; 
 scalar_t__ FUNC10 () ; 
 int FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(struct i2c_client *client, const struct i2c_device_id *id)
{
	int				status;
	unsigned			i;
	struct twl4030_platform_data	*pdata = client->dev.platform_data;

	if (!pdata) {
		FUNC2(&client->dev, "no platform data?\n");
		return -EINVAL;
	}

	if (FUNC4(client->adapter, I2C_FUNC_I2C) == 0) {
		FUNC2(&client->dev, "can't talk I2C?\n");
		return -EIO;
	}

	if (inuse) {
		FUNC2(&client->dev, "driver is already in use\n");
		return -EBUSY;
	}

	for (i = 0; i < TWL4030_NUM_SLAVES; i++) {
		struct twl4030_client	*twl = &twl4030_modules[i];

		twl->address = client->addr + i;
		if (i == 0)
			twl->client = client;
		else {
			twl->client = FUNC5(client->adapter,
					twl->address);
			if (!twl->client) {
				FUNC3(&client->dev,
					"can't attach client %d\n", i);
				status = -ENOMEM;
				goto fail;
			}
			FUNC7(twl->client->name, id->name,
					sizeof(twl->client->name));
		}
		FUNC6(&twl->xfer_lock);
	}
	inuse = true;

	/* setup clock framework */
	FUNC1(&client->dev);

	/* load power event scripts */
	if (FUNC10() && pdata->power)
		FUNC8(pdata->power);

	/* Maybe init the T2 Interrupt subsystem */
	if (client->irq
			&& pdata->irq_base
			&& pdata->irq_end > pdata->irq_base) {
		status = FUNC11(client->irq, pdata->irq_base, pdata->irq_end);
		if (status < 0)
			goto fail;
	}

	status = FUNC0(pdata, id->driver_data);
fail:
	if (status < 0)
		FUNC9(client);
	return status;
}