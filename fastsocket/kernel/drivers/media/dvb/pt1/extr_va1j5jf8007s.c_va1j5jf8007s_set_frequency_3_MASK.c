#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  frequency; } ;
struct TYPE_6__ {TYPE_2__ dtv_property_cache; } ;
struct va1j5jf8007s_state {int /*<<< orphan*/  adap; TYPE_1__* config; TYPE_3__ fe; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct va1j5jf8007s_state *state)
{
	u32 frequency;
	u8 buf[4];
	struct i2c_msg msg;

	frequency = state->fe.dtv_property_cache.frequency;

	buf[0] = 0xfe;
	buf[1] = 0xc0;
	buf[2] = 0xf4;
	buf[3] = FUNC1(frequency) | 0x4;

	msg.addr = state->config->demod_address;
	msg.flags = 0;
	msg.len = sizeof(buf);
	msg.buf = buf;

	if (FUNC0(state->adap, &msg, 1) != 1)
		return -EREMOTEIO;

	return 0;
}