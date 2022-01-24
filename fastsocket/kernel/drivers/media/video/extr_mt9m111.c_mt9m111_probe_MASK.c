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
struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  top; int /*<<< orphan*/  left; } ;
struct mt9m111 {int /*<<< orphan*/ * fmt; TYPE_1__ rect; int /*<<< orphan*/  subdev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  MT9M111_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9M111_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9M111_MIN_DARK_COLS ; 
 int /*<<< orphan*/  MT9M111_MIN_DARK_ROWS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mt9m111*) ; 
 struct mt9m111* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mt9m111_colour_fmts ; 
 int /*<<< orphan*/  mt9m111_ops ; 
 int /*<<< orphan*/  mt9m111_subdev_ops ; 
 int FUNC5 (struct soc_camera_device*,struct i2c_client*) ; 
 struct i2c_adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 struct soc_camera_link* FUNC7 (struct soc_camera_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *did)
{
	struct mt9m111 *mt9m111;
	struct soc_camera_device *icd = client->dev.platform_data;
	struct i2c_adapter *adapter = FUNC6(client->dev.parent);
	struct soc_camera_link *icl;
	int ret;

	if (!icd) {
		FUNC0(&client->dev, "mt9m111: soc-camera data missing!\n");
		return -EINVAL;
	}

	icl = FUNC7(icd);
	if (!icl) {
		FUNC0(&client->dev, "mt9m111: driver needs platform data\n");
		return -EINVAL;
	}

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC1(&adapter->dev,
			 "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
		return -EIO;
	}

	mt9m111 = FUNC4(sizeof(struct mt9m111), GFP_KERNEL);
	if (!mt9m111)
		return -ENOMEM;

	FUNC8(&mt9m111->subdev, client, &mt9m111_subdev_ops);

	/* Second stage probe - when a capture adapter is there */
	icd->ops		= &mt9m111_ops;

	mt9m111->rect.left	= MT9M111_MIN_DARK_COLS;
	mt9m111->rect.top	= MT9M111_MIN_DARK_ROWS;
	mt9m111->rect.width	= MT9M111_MAX_WIDTH;
	mt9m111->rect.height	= MT9M111_MAX_HEIGHT;
	mt9m111->fmt		= &mt9m111_colour_fmts[0];

	ret = FUNC5(icd, client);
	if (ret) {
		icd->ops = NULL;
		FUNC3(mt9m111);
	}

	return ret;
}