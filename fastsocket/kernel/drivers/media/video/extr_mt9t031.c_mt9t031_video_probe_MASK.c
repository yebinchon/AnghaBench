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
struct TYPE_2__ {int /*<<< orphan*/ * type; } ;
struct video_device {TYPE_1__ dev; } ;
struct mt9t031 {int exposure; int gain; int /*<<< orphan*/  model; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  MT9T031_CHIP_ENABLE ; 
 int /*<<< orphan*/  MT9T031_CHIP_VERSION ; 
 int /*<<< orphan*/  V4L2_IDENT_MT9T031 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  mt9t031_dev_type ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct video_device* FUNC6 (struct i2c_client*) ; 
 struct mt9t031* FUNC7 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct mt9t031 *mt9t031 = FUNC7(client);
	struct video_device *vdev = FUNC6(client);
	s32 data;
	int ret;

	/* Enable the chip */
	data = FUNC5(client, MT9T031_CHIP_ENABLE, 1);
	FUNC0(&client->dev, "write: %d\n", data);

	/* Read out the chip version register */
	data = FUNC4(client, MT9T031_CHIP_VERSION);

	switch (data) {
	case 0x1621:
		mt9t031->model = V4L2_IDENT_MT9T031;
		break;
	default:
		FUNC1(&client->dev,
			"No MT9T031 chip detected, register read %x\n", data);
		return -ENODEV;
	}

	FUNC2(&client->dev, "Detected a MT9T031 chip ID %x\n", data);

	ret = FUNC3(client);
	if (ret < 0)
		FUNC1(&client->dev, "Failed to initialise the camera\n");
	else
		vdev->dev.type = &mt9t031_dev_type;

	/* mt9t031_idle() has reset the chip to default. */
	mt9t031->exposure = 255;
	mt9t031->gain = 64;

	return ret;
}