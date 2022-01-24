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
struct v4l2_subdev {int dummy; } ;
struct v4l2_rect {int width; int height; int left; int top; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct mt9v022 {scalar_t__ fmts; int y_skip_top; struct v4l2_rect rect; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  MT9V022_AEC_AGC_ENABLE ; 
 int /*<<< orphan*/  MT9V022_COLUMN_SKIP ; 
 int /*<<< orphan*/  MT9V022_COLUMN_START ; 
 int /*<<< orphan*/  MT9V022_HORIZONTAL_BLANKING ; 
 int /*<<< orphan*/  MT9V022_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_MAX_TOTAL_SHUTTER_WIDTH ; 
 int /*<<< orphan*/  MT9V022_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9V022_MIN_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_MIN_WIDTH ; 
 int /*<<< orphan*/  MT9V022_ROW_SKIP ; 
 int /*<<< orphan*/  MT9V022_ROW_START ; 
 int /*<<< orphan*/  MT9V022_TOTAL_SHUTTER_WIDTH ; 
 int /*<<< orphan*/  MT9V022_VERTICAL_BLANKING ; 
 int /*<<< orphan*/  MT9V022_WINDOW_HEIGHT ; 
 int /*<<< orphan*/  MT9V022_WINDOW_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int) ; 
 scalar_t__ mt9v022_colour_fmts ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mt9v022* FUNC5 (struct i2c_client*) ; 
 struct i2c_client* FUNC6 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC7(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
	struct i2c_client *client = FUNC6(sd);
	struct mt9v022 *mt9v022 = FUNC5(client);
	struct v4l2_rect rect = a->c;
	int ret;

	/* Bayer format - even size lengths */
	if (mt9v022->fmts == mt9v022_colour_fmts) {
		rect.width	= FUNC0(rect.width, 2);
		rect.height	= FUNC0(rect.height, 2);
		/* Let the user play with the starting pixel */
	}

	FUNC4(&rect.left, &rect.width,
		     MT9V022_COLUMN_SKIP, MT9V022_MIN_WIDTH, MT9V022_MAX_WIDTH);

	FUNC4(&rect.top, &rect.height,
		     MT9V022_ROW_SKIP, MT9V022_MIN_HEIGHT, MT9V022_MAX_HEIGHT);

	/* Like in example app. Contradicts the datasheet though */
	ret = FUNC2(client, MT9V022_AEC_AGC_ENABLE);
	if (ret >= 0) {
		if (ret & 1) /* Autoexposure */
			ret = FUNC3(client, MT9V022_MAX_TOTAL_SHUTTER_WIDTH,
					rect.height + mt9v022->y_skip_top + 43);
		else
			ret = FUNC3(client, MT9V022_TOTAL_SHUTTER_WIDTH,
					rect.height + mt9v022->y_skip_top + 43);
	}
	/* Setup frame format: defaults apart from width and height */
	if (!ret)
		ret = FUNC3(client, MT9V022_COLUMN_START, rect.left);
	if (!ret)
		ret = FUNC3(client, MT9V022_ROW_START, rect.top);
	if (!ret)
		/*
		 * Default 94, Phytec driver says:
		 * "width + horizontal blank >= 660"
		 */
		ret = FUNC3(client, MT9V022_HORIZONTAL_BLANKING,
				rect.width > 660 - 43 ? 43 :
				660 - rect.width);
	if (!ret)
		ret = FUNC3(client, MT9V022_VERTICAL_BLANKING, 45);
	if (!ret)
		ret = FUNC3(client, MT9V022_WINDOW_WIDTH, rect.width);
	if (!ret)
		ret = FUNC3(client, MT9V022_WINDOW_HEIGHT,
				rect.height + mt9v022->y_skip_top);

	if (ret < 0)
		return ret;

	FUNC1(&client->dev, "Frame %dx%d pixel\n", rect.width, rect.height);

	mt9v022->rect = rect;

	return 0;
}