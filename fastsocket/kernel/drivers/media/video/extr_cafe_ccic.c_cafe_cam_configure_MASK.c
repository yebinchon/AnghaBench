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
struct v4l2_mbus_framefmt {int dummy; } ;
struct cafe_camera {int /*<<< orphan*/  mbus_code; int /*<<< orphan*/  pix_format; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  init ; 
 int /*<<< orphan*/  s_mbus_fmt ; 
 int FUNC1 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_mbus_framefmt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC3(struct cafe_camera *cam)
{
	struct v4l2_mbus_framefmt mbus_fmt;
	int ret;

	FUNC2(&mbus_fmt, &cam->pix_format, cam->mbus_code);
	ret = FUNC1(cam, core, init, 0);
	if (ret == 0)
		ret = FUNC1(cam, video, s_mbus_fmt, &mbus_fmt);
	/*
	 * OV7670 does weird things if flip is set *before* format...
	 */
	ret += FUNC0(cam);
	return ret;
}