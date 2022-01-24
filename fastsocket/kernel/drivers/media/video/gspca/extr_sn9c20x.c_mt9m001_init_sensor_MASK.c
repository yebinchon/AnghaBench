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
typedef  int u16 ;
struct sd {int hstart; int vstart; } ;
struct gspca_dev {int ctrl_dis; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int ENODEV ; 
 int HFLIP_IDX ; 
 int VFLIP_IDX ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct gspca_dev*,int,int*) ; 
 scalar_t__ FUNC3 (struct gspca_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__* mt9m001_init ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int i;
	u16 id;

	if (FUNC2(gspca_dev, 0x00, &id) < 0)
		return -EINVAL;

	/* must be 0x8411 or 0x8421 for colour sensor and 8431 for bw */
	switch (id) {
	case 0x8411:
	case 0x8421:
		FUNC4("MT9M001 color sensor detected");
		break;
	case 0x8431:
		FUNC4("MT9M001 mono sensor detected");
		break;
	default:
		FUNC1("No MT9M001 chip detected, ID = %x\n", id);
		return -ENODEV;
	}

	for (i = 0; i < FUNC0(mt9m001_init); i++) {
		if (FUNC3(gspca_dev, mt9m001_init[i].reg,
				mt9m001_init[i].val) < 0) {
			FUNC1("MT9M001 sensor initialization failed");
			return -ENODEV;
		}
	}
	/* disable hflip and vflip */
	gspca_dev->ctrl_dis = (1 << HFLIP_IDX) | (1 << VFLIP_IDX);
	sd->hstart = 1;
	sd->vstart = 1;
	return 0;
}