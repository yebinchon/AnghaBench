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
typedef  int u8 ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dst_state {int /*<<< orphan*/  i2c; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_DEBUG ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC4(struct dst_state *state, u8 *ret, u8 len)
{
	struct i2c_msg msg = {
		.addr = state->config->demod_address,
		.flags = I2C_M_RD,
		.buf = ret,
		.len = len
	};

	int err;
	int cnt;

	for (cnt = 0; cnt < 2; cnt++) {
		if ((err = FUNC3(state->i2c, &msg, 1)) < 0) {
			FUNC0(verbose, DST_INFO, 1, "read_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)", err, len, ret[0]);
			FUNC2(state);
			continue;
		} else
			break;
	}
	if (cnt >= 2) {
		FUNC0(verbose, DST_INFO, 1, "RDC 8820 RESET");
		FUNC1(state);

		return -1;
	}
	FUNC0(verbose, DST_DEBUG, 1, "reply is 0x%x", ret[0]);
	for (err = 1; err < len; err++)
		FUNC0(verbose, DST_DEBUG, 0, " 0x%x", ret[err]);
	if (err > 1)
		FUNC0(verbose, DST_DEBUG, 0, "\n");

	return 0;
}