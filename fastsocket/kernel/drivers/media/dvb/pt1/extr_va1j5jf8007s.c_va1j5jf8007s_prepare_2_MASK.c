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
struct va1j5jf8007s_state {int /*<<< orphan*/  adap; TYPE_1__* config; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int frequency; int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int EINVAL ; 
 int EREMOTEIO ; 
#define  VA1J5JF8007S_20MHZ 129 
#define  VA1J5JF8007S_25MHZ 128 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ ** va1j5jf8007s_20mhz_prepare_bufs ; 
 int /*<<< orphan*/ ** va1j5jf8007s_25mhz_prepare_bufs ; 

__attribute__((used)) static int FUNC3(struct va1j5jf8007s_state *state)
{
	const u8 (*bufs)[2];
	int size;
	u8 addr;
	u8 buf[2];
	struct i2c_msg msg;
	int i;

	switch (state->config->frequency) {
	case VA1J5JF8007S_20MHZ:
		bufs = va1j5jf8007s_20mhz_prepare_bufs;
		size = FUNC0(va1j5jf8007s_20mhz_prepare_bufs);
		break;
	case VA1J5JF8007S_25MHZ:
		bufs = va1j5jf8007s_25mhz_prepare_bufs;
		size = FUNC0(va1j5jf8007s_25mhz_prepare_bufs);
		break;
	default:
		return -EINVAL;
	}

	addr = state->config->demod_address;

	msg.addr = addr;
	msg.flags = 0;
	msg.len = 2;
	msg.buf = buf;
	for (i = 0; i < size; i++) {
		FUNC2(buf, bufs[i], sizeof(buf));
		if (FUNC1(state->adap, &msg, 1) != 1)
			return -EREMOTEIO;
	}

	return 0;
}