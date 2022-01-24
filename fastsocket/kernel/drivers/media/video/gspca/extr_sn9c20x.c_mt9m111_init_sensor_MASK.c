#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sd {int vstart; scalar_t__ hstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int AUTOGAIN_IDX ; 
 int ENODEV ; 
 int EXPOSURE_IDX ; 
 int GAIN_IDX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* mt9m111_init ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	for (i = 0; i < FUNC0(mt9m111_init); i++) {
		if (FUNC2(gspca_dev, mt9m111_init[i].reg,
				mt9m111_init[i].val) < 0) {
			FUNC1("MT9M111 sensor initialization failed");
			return -ENODEV;
		}
	}
	gspca_dev->ctrl_dis = (1 << EXPOSURE_IDX) | (1 << AUTOGAIN_IDX)
				| (1 << GAIN_IDX);
	sd->hstart = 0;
	sd->vstart = 2;
	return 0;
}