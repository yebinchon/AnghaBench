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
struct sd {int hstart; int vstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int EXPOSURE_IDX ; 
 int HFLIP_IDX ; 
 int VFLIP_IDX ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* soi968_init ; 

__attribute__((used)) static int FUNC3(struct gspca_dev *gspca_dev)
{
	int i;
	struct sd *sd = (struct sd *) gspca_dev;

	for (i = 0; i < FUNC0(soi968_init); i++) {
		if (FUNC2(gspca_dev, soi968_init[i].reg,
				soi968_init[i].val) < 0) {
			FUNC1("SOI968 sensor initialization failed");
			return -ENODEV;
		}
	}
	/* disable hflip and vflip */
	gspca_dev->ctrl_dis = (1 << HFLIP_IDX) | (1 << VFLIP_IDX)
				| (1 << EXPOSURE_IDX);
	sd->hstart = 60;
	sd->vstart = 11;
	return 0;
}