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
struct TYPE_5__ {int /*<<< orphan*/  brightness; } ;
struct TYPE_4__ {int /*<<< orphan*/  allowableOverExposure; } ;
struct TYPE_6__ {TYPE_2__ colourParams; TYPE_1__ flickerControl; } ;
struct sd {TYPE_3__ params; } ;
struct gspca_dev {scalar_t__ streaming; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 int FUNC0 (struct gspca_dev*) ; 
 int FUNC1 (struct gspca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev, __s32 val)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int ret;

	sd->params.colourParams.brightness = val;
	sd->params.flickerControl.allowableOverExposure =
		FUNC2(sd->params.colourParams.brightness);
	if (gspca_dev->streaming) {
		ret = FUNC0(gspca_dev);
		if (ret)
			return ret;
		return FUNC1(gspca_dev);
	}
	return 0;
}