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
struct TYPE_4__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * parent; int /*<<< orphan*/  archdata; int /*<<< orphan*/  platform_data; } ;
struct i2c_client {int /*<<< orphan*/  addr; int /*<<< orphan*/  name; TYPE_1__ dev; struct i2c_adapter* adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  flags; } ;
struct i2c_board_info {int /*<<< orphan*/  type; int /*<<< orphan*/  irq; int /*<<< orphan*/  addr; int /*<<< orphan*/  flags; int /*<<< orphan*/ * archdata; int /*<<< orphan*/  platform_data; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  i2c_bus_type ; 
 int FUNC6 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_client_type ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 struct i2c_client* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct i2c_client *
FUNC10(struct i2c_adapter *adap, struct i2c_board_info const *info)
{
	struct i2c_client	*client;
	int			status;

	client = FUNC8(sizeof *client, GFP_KERNEL);
	if (!client)
		return NULL;

	client->adapter = adap;

	client->dev.platform_data = info->platform_data;

	if (info->archdata)
		client->dev.archdata = *info->archdata;

	client->flags = info->flags;
	client->addr = info->addr;
	client->irq = info->irq;

	FUNC9(client->name, info->type, sizeof(client->name));

	/* Check for address business */
	status = FUNC6(adap, client->addr);
	if (status)
		goto out_err;

	client->dev.parent = &client->adapter->dev;
	client->dev.bus = &i2c_bus_type;
	client->dev.type = &i2c_client_type;

	FUNC3(&client->dev, "%d-%04x", FUNC5(adap),
		     client->addr);
	status = FUNC4(&client->dev);
	if (status)
		goto out_err;

	FUNC0(&adap->dev, "client [%s] registered with bus id %s\n",
		client->name, FUNC2(&client->dev));

	return client;

out_err:
	FUNC1(&adap->dev, "Failed to register i2c client %s at 0x%02x "
		"(%d)\n", client->name, client->addr, status);
	FUNC7(client);
	return NULL;
}