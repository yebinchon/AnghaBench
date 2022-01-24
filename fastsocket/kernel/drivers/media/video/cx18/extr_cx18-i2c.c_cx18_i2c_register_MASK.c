#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct v4l2_subdev {int grp_id; } ;
struct i2c_adapter {int dummy; } ;
struct cx18 {int /*<<< orphan*/  v4l2_dev; TYPE_1__* card_i2c; struct i2c_adapter* i2c_adap; } ;
struct TYPE_2__ {int /*<<< orphan*/ * tv; int /*<<< orphan*/ * demod; int /*<<< orphan*/ * radio; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int CX18_HW_IR_ANY ; 
 int CX18_HW_TUNER ; 
 int FUNC1 (struct cx18*,struct i2c_adapter*,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hw_addrs ; 
 int* hw_bus ; 
 char** hw_devicenames ; 
 struct v4l2_subdev* FUNC2 (int /*<<< orphan*/ *,struct i2c_adapter*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct cx18 *cx, unsigned idx)
{
	struct v4l2_subdev *sd;
	int bus = hw_bus[idx];
	struct i2c_adapter *adap = &cx->i2c_adap[bus];
	const char *type = hw_devicenames[idx];
	u32 hw = 1 << idx;

	if (idx >= FUNC0(hw_addrs))
		return -1;

	if (hw == CX18_HW_TUNER) {
		/* special tuner group handling */
		sd = FUNC2(&cx->v4l2_dev,
				adap, type, 0, cx->card_i2c->radio);
		if (sd != NULL)
			sd->grp_id = hw;
		sd = FUNC2(&cx->v4l2_dev,
				adap, type, 0, cx->card_i2c->demod);
		if (sd != NULL)
			sd->grp_id = hw;
		sd = FUNC2(&cx->v4l2_dev,
				adap, type, 0, cx->card_i2c->tv);
		if (sd != NULL)
			sd->grp_id = hw;
		return sd != NULL ? 0 : -1;
	}

	if (hw & CX18_HW_IR_ANY)
		return FUNC1(cx, adap, hw, type, hw_addrs[idx]);

	/* Is it not an I2C device or one we do not wish to register? */
	if (!hw_addrs[idx])
		return -1;

	/* It's an I2C device other than an analog tuner or IR chip */
	sd = FUNC2(&cx->v4l2_dev, adap, type, hw_addrs[idx],
				 NULL);
	if (sd != NULL)
		sd->grp_id = hw;
	return sd != NULL ? 0 : -1;
}