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
struct soc_camera_link {int /*<<< orphan*/  priv; } ;
struct soc_camera_device {int /*<<< orphan*/ * ops; } ;
struct ov772x_priv {int /*<<< orphan*/  subdev; int /*<<< orphan*/  info; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_adapter {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ov772x_priv*) ; 
 struct ov772x_priv* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ov772x_ops ; 
 int /*<<< orphan*/  ov772x_subdev_ops ; 
 int FUNC4 (struct soc_camera_device*,struct i2c_client*) ; 
 struct i2c_adapter* FUNC5 (int /*<<< orphan*/ ) ; 
 struct soc_camera_link* FUNC6 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *did)
{
	struct ov772x_priv        *priv;
	struct soc_camera_device  *icd = client->dev.platform_data;
	struct i2c_adapter        *adapter = FUNC5(client->dev.parent);
	struct soc_camera_link    *icl;
	int                        ret;

	if (!icd) {
		FUNC0(&client->dev, "OV772X: missing soc-camera data!\n");
		return -EINVAL;
	}

	icl = FUNC6(icd);
	if (!icl || !icl->priv)
		return -EINVAL;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC0(&adapter->dev,
			"I2C-Adapter doesn't support "
			"I2C_FUNC_SMBUS_BYTE_DATA\n");
		return -EIO;
	}

	priv = FUNC3(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->info = icl->priv;

	FUNC7(&priv->subdev, client, &ov772x_subdev_ops);

	icd->ops		= &ov772x_ops;

	ret = FUNC4(icd, client);
	if (ret) {
		icd->ops = NULL;
		FUNC2(priv);
	}

	return ret;
}