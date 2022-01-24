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
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {scalar_t__ iface; TYPE_1__ dev; } ;
struct mt9m111 {int autoexposure; int autowhitebalance; int swap_rgb_even_odd; int swap_rgb_red_blue; int /*<<< orphan*/  model; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;
struct TYPE_4__ {scalar_t__ nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_VERSION ; 
 int ENODEV ; 
 int /*<<< orphan*/  V4L2_IDENT_MT9M111 ; 
 int /*<<< orphan*/  V4L2_IDENT_MT9M112 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mt9m111* FUNC4 (struct i2c_client*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd,
			       struct i2c_client *client)
{
	struct mt9m111 *mt9m111 = FUNC4(client);
	s32 data;
	int ret;

	/*
	 * We must have a parent by now. And it cannot be a wrong one.
	 * So this entire test is completely redundant.
	 */
	if (!icd->dev.parent ||
	    FUNC5(icd->dev.parent)->nr != icd->iface)
		return -ENODEV;

	mt9m111->autoexposure = 1;
	mt9m111->autowhitebalance = 1;

	mt9m111->swap_rgb_even_odd = 1;
	mt9m111->swap_rgb_red_blue = 1;

	data = FUNC3(CHIP_VERSION);

	switch (data) {
	case 0x143a: /* MT9M111 or MT9M131 */
		mt9m111->model = V4L2_IDENT_MT9M111;
		FUNC1(&client->dev,
			"Detected a MT9M111/MT9M131 chip ID %x\n", data);
		break;
	case 0x148c: /* MT9M112 */
		mt9m111->model = V4L2_IDENT_MT9M112;
		FUNC1(&client->dev, "Detected a MT9M112 chip ID %x\n", data);
		break;
	default:
		ret = -ENODEV;
		FUNC0(&client->dev,
			"No MT9M111/MT9M112/MT9M131 chip detected register read %x\n",
			data);
		goto ei2c;
	}

	ret = FUNC2(client);

ei2c:
	return ret;
}