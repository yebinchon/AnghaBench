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
struct TYPE_3__ {scalar_t__ bottomlight; scalar_t__ toplight; int /*<<< orphan*/  qx3_detected; } ;
struct TYPE_4__ {TYPE_1__ qx3; } ;
struct sd {TYPE_2__ params; } ;
struct gspca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPIA_COMMAND_WriteMCPort ; 
 int /*<<< orphan*/  CPIA_COMMAND_WriteVCReg ; 
 int FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret, p1, p2;

	if (!sd->params.qx3.qx3_detected)
		return 0;

	p1 = (sd->params.qx3.bottomlight == 0) << 1;
	p2 = (sd->params.qx3.toplight == 0) << 3;

	ret = FUNC0(gspca_dev, CPIA_COMMAND_WriteVCReg,
			 0x90, 0x8f, 0x50, 0);
	if (ret)
		return ret;

	return FUNC0(gspca_dev, CPIA_COMMAND_WriteMCPort, 2, 0,
			  p1 | p2 | 0xe0, 0);
}