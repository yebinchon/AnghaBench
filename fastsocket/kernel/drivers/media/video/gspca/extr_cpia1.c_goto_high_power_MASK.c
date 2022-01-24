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
struct TYPE_3__ {scalar_t__ systemState; } ;
struct TYPE_4__ {TYPE_1__ status; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_COMMAND_GetCameraStatus ; 
 int /*<<< orphan*/  CPIA_COMMAND_GotoHiPower ; 
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  D_ERR ; 
 int EINTR ; 
 int EIO ; 
 scalar_t__ HI_POWER_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  current ; 
 int FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret;

	ret = FUNC1(gspca_dev, CPIA_COMMAND_GotoHiPower, 0, 0, 0, 0);
	if (ret)
		return ret;

	FUNC2(40);	/* windows driver does it too */

	if (FUNC4(current))
		return -EINTR;

	FUNC1(gspca_dev, CPIA_COMMAND_GetCameraStatus, 0, 0, 0, 0);
	if (ret)
		return ret;

	if (sd->params.status.systemState != HI_POWER_STATE) {
		FUNC0(D_ERR, "unexpected state after hi power cmd: %02x",
			       sd->params.status.systemState);
		FUNC3(&sd->params);
		return -EIO;
	}

	FUNC0(D_CONF, "camera now in HIGH power state");
	return 0;
}