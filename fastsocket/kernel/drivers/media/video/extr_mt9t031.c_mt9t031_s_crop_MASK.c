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
struct v4l2_rect {void* height; int /*<<< orphan*/  top; void* width; int /*<<< orphan*/  left; } ;
struct v4l2_crop {struct v4l2_rect c; } ;
struct mt9t031 {int /*<<< orphan*/  yskip; int /*<<< orphan*/  xskip; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (void*,int) ; 
 int /*<<< orphan*/  MT9T031_COLUMN_SKIP ; 
 int /*<<< orphan*/  MT9T031_MAX_HEIGHT ; 
 int /*<<< orphan*/  MT9T031_MAX_WIDTH ; 
 int /*<<< orphan*/  MT9T031_MIN_HEIGHT ; 
 int /*<<< orphan*/  MT9T031_MIN_WIDTH ; 
 int /*<<< orphan*/  MT9T031_ROW_SKIP ; 
 int FUNC1 (struct i2c_client*,struct v4l2_rect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mt9t031* FUNC3 (struct i2c_client*) ; 
 struct i2c_client* FUNC4 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC5(struct v4l2_subdev *sd, struct v4l2_crop *a)
{
	struct v4l2_rect rect = a->c;
	struct i2c_client *client = FUNC4(sd);
	struct mt9t031 *mt9t031 = FUNC3(client);

	rect.width = FUNC0(rect.width, 2);
	rect.height = FUNC0(rect.height, 2);

	FUNC2(&rect.left, &rect.width,
		     MT9T031_COLUMN_SKIP, MT9T031_MIN_WIDTH, MT9T031_MAX_WIDTH);

	FUNC2(&rect.top, &rect.height,
		     MT9T031_ROW_SKIP, MT9T031_MIN_HEIGHT, MT9T031_MAX_HEIGHT);

	return FUNC1(client, &rect, mt9t031->xskip, mt9t031->yskip);
}