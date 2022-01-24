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
struct TYPE_4__ {scalar_t__ qx3_detected; } ;
struct TYPE_6__ {int expMode; } ;
struct TYPE_5__ {TYPE_1__ qx3; TYPE_3__ exposure; } ;
struct sd {scalar_t__ first_frame; TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_COMMAND_GetExposure ; 
 int /*<<< orphan*/  CPIA_COMMAND_ReadMCPorts ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*) ; 

__attribute__((used)) static void FUNC4(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;

	/* Set the normal compression settings once we have captured a
	   few uncompressed frames (and AEC has hopefully settled) */
	if (sd->first_frame) {
		sd->first_frame--;
		if (sd->first_frame == 0)
			FUNC0(gspca_dev);
	}

	/* Switch flicker control back on if it got turned off */
	FUNC3(gspca_dev);

	/* If AEC is enabled, monitor the exposure and
	   adjust the sensor frame rate if needed */
	if (sd->params.exposure.expMode == 2)
		FUNC2(gspca_dev);

	/* Update our knowledge of the camera state */
	FUNC1(gspca_dev, CPIA_COMMAND_GetExposure, 0, 0, 0, 0);
	if (sd->params.qx3.qx3_detected)
		FUNC1(gspca_dev, CPIA_COMMAND_ReadMCPorts, 0, 0, 0, 0);
}