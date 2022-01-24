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
typedef  size_t u8 ;
struct i2c_msg {size_t* buf; size_t len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dst_state {int /*<<< orphan*/  i2c; TYPE_1__* config; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  DST_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dst_state*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC4(struct dst_state *state, u8 *data, u8 len)
{
	struct i2c_msg msg = {
		.addr = state->config->demod_address,
		.flags = 0,
		.buf = data,
		.len = len
	};

	int err;
	u8 cnt, i;

	FUNC0(verbose, DST_NOTICE, 0, "writing [ ");
	for (i = 0; i < len; i++)
		FUNC0(verbose, DST_NOTICE, 0, "%02x ", data[i]);
	FUNC0(verbose, DST_NOTICE, 0, "]\n");

	for (cnt = 0; cnt < 2; cnt++) {
		if ((err = FUNC3(state->i2c, &msg, 1)) < 0) {
			FUNC0(verbose, DST_INFO, 1, "_write_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)", err, len, data[0]);
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

	return 0;
}