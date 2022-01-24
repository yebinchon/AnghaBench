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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_address; } ;
struct ec100_state {int /*<<< orphan*/  i2c; TYPE_1__ config; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ec100_state *state, u8 reg, u8 *val)
{
	struct i2c_msg msg[2] = {
		{
			.addr = state->config.demod_address,
			.flags = 0,
			.len = 1,
			.buf = &reg
		}, {
			.addr = state->config.demod_address,
			.flags = I2C_M_RD,
			.len = 1,
			.buf = val
		}
	};

	if (FUNC0(state->i2c, msg, 2) != 2) {
		FUNC1("I2C read failed reg:%02x", reg);
		return -EREMOTEIO;
	}
	return 0;
}