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
struct vcontrol {int start_bit; int /*<<< orphan*/  reg; } ;
struct v4l2_int_device {struct tcm825x_sensor* priv; } ;
struct v4l2_control {int value; scalar_t__ id; } ;
struct tcm825x_sensor {TYPE_1__* platform_data; struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {int (* is_upside_down ) () ;} ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  TCM825X_ESRSPD_L ; 
 int /*<<< orphan*/  TCM825X_ESRSPD_U ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ V4L2_CID_EXPOSURE ; 
 scalar_t__ V4L2_CID_HFLIP ; 
 scalar_t__ V4L2_CID_VFLIP ; 
 struct vcontrol* FUNC1 (scalar_t__) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct v4l2_int_device *s,
			     struct v4l2_control *vc)
{
	struct tcm825x_sensor *sensor = s->priv;
	struct i2c_client *client = sensor->i2c_client;
	struct vcontrol *lvc;
	int val = vc->value;

	/* exposure time is special, spread accross 2 registers */
	if (vc->id == V4L2_CID_EXPOSURE) {
		int val_lower, val_upper;
		val_lower = val & FUNC0(TCM825X_ESRSPD_L);
		val_upper = (val >> 8) & FUNC0(TCM825X_ESRSPD_U);

		if (FUNC3(client,
					   TCM825X_ESRSPD_U, val_upper))
			return -EIO;

		if (FUNC3(client,
					   TCM825X_ESRSPD_L, val_lower))
			return -EIO;

		return 0;
	}

	lvc = FUNC1(vc->id);
	if (lvc == NULL)
		return -EINVAL;

	if (vc->id == V4L2_CID_HFLIP || vc->id == V4L2_CID_VFLIP)
		val ^= sensor->platform_data->is_upside_down();

	val = val << lvc->start_bit;
	if (FUNC3(client, lvc->reg, val))
		return -EIO;

	return 0;
}