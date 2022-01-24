#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_10__ {int nctrls; TYPE_5__* ctrls; } ;
struct TYPE_8__ {int nmodes; TYPE_5__* cam_mode; } ;
struct TYPE_9__ {TYPE_1__ cam; } ;
struct sd {int /*<<< orphan*/ * sensor_priv; TYPE_3__ desc; TYPE_2__ gspca_dev; } ;
typedef  int /*<<< orphan*/  s32 ;
struct TYPE_11__ {int /*<<< orphan*/  default_value; } ;
struct TYPE_12__ {TYPE_4__ qctrl; } ;

/* Variables and functions */
 int FUNC0 (TYPE_5__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PB_IDENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_5__* pb0100_ctrl ; 
 TYPE_5__* pb0100_mode ; 
 int FUNC3 (struct sd*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(struct sd *sd)
{
	u16 sensor;
	int i, err;
	s32 *sensor_settings;

	err = FUNC3(sd, PB_IDENT, &sensor);

	if (err < 0)
		return -ENODEV;

	if ((sensor >> 8) == 0x64) {
		sensor_settings = FUNC2(
				FUNC0(pb0100_ctrl) * sizeof(s32),
				GFP_KERNEL);
		if (!sensor_settings)
			return -ENOMEM;

		FUNC1("Photobit pb0100 sensor detected");

		sd->gspca_dev.cam.cam_mode = pb0100_mode;
		sd->gspca_dev.cam.nmodes = FUNC0(pb0100_mode);
		sd->desc.ctrls = pb0100_ctrl;
		sd->desc.nctrls = FUNC0(pb0100_ctrl);
		for (i = 0; i < sd->desc.nctrls; i++)
			sensor_settings[i] = pb0100_ctrl[i].qctrl.default_value;
		sd->sensor_priv = sensor_settings;

		return 0;
	}

	return -ENODEV;
}