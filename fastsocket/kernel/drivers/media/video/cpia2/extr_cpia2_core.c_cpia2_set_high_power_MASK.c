#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int system_ctrl; int /*<<< orphan*/  power_mode; } ;
struct TYPE_4__ {int system_state; } ;
struct TYPE_6__ {TYPE_2__ camera_state; TYPE_1__ vp_params; } ;
struct camera_data {TYPE_3__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA2_CMD_CLEAR_V2W_ERR ; 
 int /*<<< orphan*/  CPIA2_CMD_GET_SYSTEM_CTRL ; 
 int /*<<< orphan*/  CPIA2_CMD_GET_VP_SYSTEM_STATE ; 
 int /*<<< orphan*/  CPIA2_CMD_SET_SYSTEM_CTRL ; 
 int CPIA2_SYSTEM_CONTROL_V2W_ERR ; 
 int CPIA2_VP_SYSTEMSTATE_HK_ALIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HI_POWER_MODE ; 
 int /*<<< orphan*/  LO_POWER_MODE ; 
 int /*<<< orphan*/  TRANSFER_READ ; 
 int /*<<< orphan*/  TRANSFER_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct camera_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct camera_data *cam)
{
	int i;
	for (i = 0; i <= 50; i++) {
		/* Read system status */
		FUNC2(cam,CPIA2_CMD_GET_SYSTEM_CTRL,TRANSFER_READ,0);

		/* If there is an error, clear it */
		if(cam->params.camera_state.system_ctrl &
		   CPIA2_SYSTEM_CONTROL_V2W_ERR)
			FUNC2(cam, CPIA2_CMD_CLEAR_V2W_ERR,
					 TRANSFER_WRITE, 0);

		/* Try to set high power mode */
		FUNC2(cam, CPIA2_CMD_SET_SYSTEM_CTRL,
				 TRANSFER_WRITE, 1);

		/* Try to read something in VP to check if everything is awake */
		FUNC2(cam, CPIA2_CMD_GET_VP_SYSTEM_STATE,
				 TRANSFER_READ, 0);
		if (cam->params.vp_params.system_state &
		    CPIA2_VP_SYSTEMSTATE_HK_ALIVE) {
			break;
		} else if (i == 50) {
			cam->params.camera_state.power_mode = LO_POWER_MODE;
			FUNC1("Camera did not wake up\n");
			return -EIO;
		}
	}

	FUNC0("System now in high power state\n");
	cam->params.camera_state.power_mode = HI_POWER_MODE;
	return 0;
}