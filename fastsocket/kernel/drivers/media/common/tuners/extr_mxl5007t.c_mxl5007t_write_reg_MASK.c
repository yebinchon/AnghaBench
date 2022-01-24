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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  adap; int /*<<< orphan*/  addr; } ;
struct mxl5007t_state {TYPE_1__ i2c_props; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct mxl5007t_state *state, u8 reg, u8 val)
{
	u8 buf[] = { reg, val };
	struct i2c_msg msg = { .addr = state->i2c_props.addr, .flags = 0,
			       .buf = buf, .len = 2 };
	int ret;

	ret = FUNC0(state->i2c_props.adap, &msg, 1);
	if (ret != 1) {
		FUNC1("failed!");
		return -EREMOTEIO;
	}
	return 0;
}