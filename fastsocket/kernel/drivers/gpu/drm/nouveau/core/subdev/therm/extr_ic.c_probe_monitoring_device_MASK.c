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
struct nvbios_therm_sensor {int /*<<< orphan*/  offset_constant; } ;
struct nouveau_therm_priv {struct i2c_client* ic; struct nvbios_therm_sensor bios_sensor; } ;
struct nouveau_i2c_port {int /*<<< orphan*/  adapter; } ;
struct i2c_client {TYPE_1__* driver; } ;
struct i2c_board_info {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ (* detect ) (struct i2c_client*,int,struct i2c_board_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_MODULE_PREFIX ; 
 struct i2c_client* FUNC0 (int /*<<< orphan*/ *,struct i2c_board_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 (struct nouveau_i2c_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_therm_priv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i2c_client*,int,struct i2c_board_info*) ; 

__attribute__((used)) static bool
FUNC6(struct nouveau_i2c_port *i2c,
			struct i2c_board_info *info)
{
	struct nouveau_therm_priv *priv = (void *)FUNC2(i2c);
	struct nvbios_therm_sensor *sensor = &priv->bios_sensor;
	struct i2c_client *client;

	FUNC4("%s%s", I2C_MODULE_PREFIX, info->type);

	client = FUNC0(&i2c->adapter, info);
	if (!client)
		return false;

	if (!client->driver || client->driver->detect(client, -1, info)) {
		FUNC1(client);
		return false;
	}

	FUNC3(priv,
		"Found an %s at address 0x%x (controlled by lm_sensors, "
		"temp offset %+i C)\n",
		info->type, info->addr, sensor->offset_constant);
	priv->ic = client;

	return true;
}