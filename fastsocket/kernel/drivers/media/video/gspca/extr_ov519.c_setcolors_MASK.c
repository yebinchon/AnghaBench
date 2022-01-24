#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sd {int sensor; TYPE_7__* ctrls; } ;
struct TYPE_13__ {int member_0; int member_1; } ;
struct TYPE_12__ {int member_0; int member_1; } ;
struct TYPE_11__ {int member_0; int member_1; } ;
struct TYPE_10__ {int member_0; int member_1; } ;
struct TYPE_9__ {int member_0; int member_1; } ;
struct TYPE_8__ {int member_0; int member_1; } ;
struct ov_i2c_regvals {TYPE_6__ member_5; TYPE_5__ member_4; TYPE_4__ member_3; TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_14__ {int val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ov_i2c_regvals const*) ; 
 size_t COLORS ; 
 int /*<<< orphan*/  OV7610_REG_SAT ; 
#define  SEN_OV6620 139 
#define  SEN_OV6630 138 
#define  SEN_OV66308AF 137 
#define  SEN_OV7610 136 
#define  SEN_OV7620 135 
#define  SEN_OV7620AE 134 
#define  SEN_OV7640 133 
#define  SEN_OV7648 132 
#define  SEN_OV7660 131 
#define  SEN_OV7670 130 
#define  SEN_OV76BE 129 
#define  SEN_OV8610 128 
 int /*<<< orphan*/  FUNC1 (struct sd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,struct ov_i2c_regvals const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gspca_dev *gspca_dev)
{
	struct sd *sd = (struct sd *) gspca_dev;
	int val;
	static const struct ov_i2c_regvals colors_7660[][6] = {
		{{0x4f, 0x28}, {0x50, 0x2a}, {0x51, 0x02}, {0x52, 0x0a},
		 {0x53, 0x19}, {0x54, 0x23}},
		{{0x4f, 0x47}, {0x50, 0x4a}, {0x51, 0x03}, {0x52, 0x11},
		 {0x53, 0x2c}, {0x54, 0x3e}},
		{{0x4f, 0x66}, {0x50, 0x6b}, {0x51, 0x05}, {0x52, 0x19},
		 {0x53, 0x40}, {0x54, 0x59}},
		{{0x4f, 0x84}, {0x50, 0x8b}, {0x51, 0x06}, {0x52, 0x20},
		 {0x53, 0x53}, {0x54, 0x73}},
		{{0x4f, 0xa3}, {0x50, 0xab}, {0x51, 0x08}, {0x52, 0x28},
		 {0x53, 0x66}, {0x54, 0x8e}},
	};

	val = sd->ctrls[COLORS].val;
	switch (sd->sensor) {
	case SEN_OV8610:
	case SEN_OV7610:
	case SEN_OV76BE:
	case SEN_OV6620:
	case SEN_OV6630:
	case SEN_OV66308AF:
		FUNC1(sd, OV7610_REG_SAT, val);
		break;
	case SEN_OV7620:
	case SEN_OV7620AE:
		/* Use UV gamma control instead. Bits 0 & 7 are reserved. */
/*		rc = ov_i2c_write(sd->dev, 0x62, (val >> 9) & 0x7e);
		if (rc < 0)
			goto out; */
		FUNC1(sd, OV7610_REG_SAT, val);
		break;
	case SEN_OV7640:
	case SEN_OV7648:
		FUNC1(sd, OV7610_REG_SAT, val & 0xf0);
		break;
	case SEN_OV7660:
		FUNC2(sd, colors_7660[val],
					FUNC0(colors_7660[0]));
		break;
	case SEN_OV7670:
		/* supported later once I work out how to do it
		 * transparently fail now! */
		/* set REG_COM13 values for UV sat auto mode */
		break;
	}
}