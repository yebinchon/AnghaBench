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
struct TYPE_3__ {int divisor; scalar_t__ baserate; } ;
struct TYPE_4__ {TYPE_1__ sensorFps; } ;
struct cam_data {int cmd_queue; TYPE_2__ params; } ;

/* Variables and functions */
 int COMMAND_SETAPCOR ; 
 int COMMAND_SETCOLOURBALANCE ; 
 int COMMAND_SETCOLOURPARAMS ; 
 int COMMAND_SETCOMPRESSION ; 
 int COMMAND_SETCOMPRESSIONPARAMS ; 
 int COMMAND_SETCOMPRESSIONTARGET ; 
 int COMMAND_SETECPTIMING ; 
 int COMMAND_SETEXPOSURE ; 
 int COMMAND_SETFLICKERCTRL ; 
 int COMMAND_SETFORMAT ; 
 int COMMAND_SETSENSORFPS ; 
 int COMMAND_SETVLOFFSET ; 
 int COMMAND_SETYUVTHRESH ; 
 int /*<<< orphan*/  CPIA_COMMAND_SetGrabMode ; 
 int /*<<< orphan*/  CPIA_GRAB_SINGLE ; 
 int EINTR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct cam_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct cam_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cam_data*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cam_data *cam)
{
	cam->cmd_queue = COMMAND_SETCOMPRESSION |
			 COMMAND_SETCOMPRESSIONTARGET |
			 COMMAND_SETCOLOURPARAMS |
			 COMMAND_SETFORMAT |
			 COMMAND_SETYUVTHRESH |
			 COMMAND_SETECPTIMING |
			 COMMAND_SETCOMPRESSIONPARAMS |
			 COMMAND_SETEXPOSURE |
			 COMMAND_SETCOLOURBALANCE |
			 COMMAND_SETSENSORFPS |
			 COMMAND_SETAPCOR |
			 COMMAND_SETFLICKERCTRL |
			 COMMAND_SETVLOFFSET;

	FUNC1(cam, CPIA_COMMAND_SetGrabMode, CPIA_GRAB_SINGLE,0,0,0);
	FUNC0(cam);

	/* Wait 6 frames for the sensor to get all settings and
	   AEC/ACB to settle */
	FUNC2(6*(cam->params.sensorFps.baserate ? 33 : 40) *
			       (1 << cam->params.sensorFps.divisor) + 10);

	if(FUNC4(current))
		return -EINTR;

	FUNC3(cam);

	return 0;
}