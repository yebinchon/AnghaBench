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
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct v4l2_dbg_chip_ident {scalar_t__ ident; TYPE_1__ match; } ;
struct cafe_camera {scalar_t__ state; scalar_t__ sensor_type; int /*<<< orphan*/  s_mutex; int /*<<< orphan*/  sensor_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ S_IDLE ; 
 scalar_t__ S_NOTREADY ; 
 int /*<<< orphan*/  V4L2_CHIP_MATCH_I2C_ADDR ; 
 scalar_t__ V4L2_IDENT_NONE ; 
 scalar_t__ V4L2_IDENT_OV7670 ; 
 int FUNC0 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC1 (struct cafe_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct cafe_camera*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct cafe_camera*,char*,scalar_t__) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  g_chip_ident ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cafe_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_dbg_chip_ident*) ; 

__attribute__((used)) static int FUNC7(struct cafe_camera *cam)
{
	struct v4l2_dbg_chip_ident chip;
	int ret;

	FUNC4(&cam->s_mutex);
	if (cam->state != S_NOTREADY)
		FUNC3(cam, "Cam init with device in funky state %d",
				cam->state);
	ret = FUNC0(cam);
	if (ret)
		goto out;
	chip.ident = V4L2_IDENT_NONE;
	chip.match.type = V4L2_CHIP_MATCH_I2C_ADDR;
	chip.match.addr = cam->sensor_addr;
	ret = FUNC6(cam, core, g_chip_ident, &chip);
	if (ret)
		goto out;
	cam->sensor_type = chip.ident;
	if (cam->sensor_type != V4L2_IDENT_OV7670) {
		FUNC2(cam, "Unsupported sensor type 0x%x", cam->sensor_type);
		ret = -EINVAL;
		goto out;
	}
/* Get/set parameters? */
	ret = 0;
	cam->state = S_IDLE;
  out:
	FUNC1(cam);
	FUNC5(&cam->s_mutex);
	return ret;
}