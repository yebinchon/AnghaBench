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
struct analog_demod_ops {int /*<<< orphan*/  (* standby ) (TYPE_2__*) ;} ;
struct TYPE_3__ {struct analog_demod_ops analog_ops; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct tuner {int mode; int standby; unsigned int radio_freq; unsigned int tv_freq; TYPE_2__ fe; } ;
struct i2c_client {int dummy; } ;
typedef  enum v4l2_tuner_type { ____Placeholder_v4l2_tuner_type } v4l2_tuner_type ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int FUNC0 (struct tuner*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, struct tuner *t,
			 enum v4l2_tuner_type mode, unsigned int freq)
{
	struct analog_demod_ops *analog_ops = &t->fe.ops.analog_ops;

	if (mode != t->mode) {
		if (FUNC0(t, mode) == -EINVAL) {
			FUNC4("Tuner doesn't support mode %d. "
				  "Putting tuner to sleep\n", mode);
			t->standby = true;
			if (analog_ops->standby)
				analog_ops->standby(&t->fe);
			return -EINVAL;
		}
		t->mode = mode;
		FUNC4("Changing to mode %d\n", mode);
	}
	if (t->mode == V4L2_TUNER_RADIO) {
		if (freq)
			t->radio_freq = freq;
		FUNC1(client, t->radio_freq);
	} else {
		if (freq)
			t->tv_freq = freq;
		FUNC2(client, t->tv_freq);
	}

	return 0;
}