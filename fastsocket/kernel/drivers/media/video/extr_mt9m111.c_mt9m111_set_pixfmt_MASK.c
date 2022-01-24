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
struct mt9m111 {int swap_yuv_y_chromas; int swap_yuv_cb_cr; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  enum v4l2_mbus_pixelcode { ____Placeholder_v4l2_mbus_pixelcode } v4l2_mbus_pixelcode ;

/* Variables and functions */
 int EINVAL ; 
#define  V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE 135 
#define  V4L2_MBUS_FMT_RGB565_2X8_LE 134 
#define  V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE 133 
#define  V4L2_MBUS_FMT_SBGGR8_1X8 132 
#define  V4L2_MBUS_FMT_UYVY8_2X8 131 
#define  V4L2_MBUS_FMT_VYUY8_2X8 130 
#define  V4L2_MBUS_FMT_YUYV8_2X8 129 
#define  V4L2_MBUS_FMT_YVYU8_2X8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct i2c_client*) ; 
 int FUNC2 (struct i2c_client*) ; 
 int FUNC3 (struct i2c_client*) ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*) ; 
 struct mt9m111* FUNC6 (struct i2c_client*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			      enum v4l2_mbus_pixelcode code)
{
	struct mt9m111 *mt9m111 = FUNC6(client);
	int ret;

	switch (code) {
	case V4L2_MBUS_FMT_SBGGR8_1X8:
		ret = FUNC2(client);
		break;
	case V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE:
		ret = FUNC1(client);
		break;
	case V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE:
		ret = FUNC3(client);
		break;
	case V4L2_MBUS_FMT_RGB565_2X8_LE:
		ret = FUNC4(client);
		break;
	case V4L2_MBUS_FMT_UYVY8_2X8:
		mt9m111->swap_yuv_y_chromas = 0;
		mt9m111->swap_yuv_cb_cr = 0;
		ret = FUNC5(client);
		break;
	case V4L2_MBUS_FMT_VYUY8_2X8:
		mt9m111->swap_yuv_y_chromas = 0;
		mt9m111->swap_yuv_cb_cr = 1;
		ret = FUNC5(client);
		break;
	case V4L2_MBUS_FMT_YUYV8_2X8:
		mt9m111->swap_yuv_y_chromas = 1;
		mt9m111->swap_yuv_cb_cr = 0;
		ret = FUNC5(client);
		break;
	case V4L2_MBUS_FMT_YVYU8_2X8:
		mt9m111->swap_yuv_y_chromas = 1;
		mt9m111->swap_yuv_cb_cr = 1;
		ret = FUNC5(client);
		break;
	default:
		FUNC0(&client->dev, "Pixel format not handled : %x\n",
			code);
		ret = -EINVAL;
	}

	return ret;
}