#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct dvb_frontend {struct va1j5jf8007s_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct va1j5jf8007s_state {struct i2c_adapter* adap; struct va1j5jf8007s_config const* config; struct dvb_frontend fe; } ;
struct va1j5jf8007s_config {int /*<<< orphan*/  demod_address; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct va1j5jf8007s_state*) ; 
 struct va1j5jf8007s_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  va1j5jf8007s_ops ; 

struct dvb_frontend *
FUNC4(const struct va1j5jf8007s_config *config,
		    struct i2c_adapter *adap)
{
	struct va1j5jf8007s_state *state;
	struct dvb_frontend *fe;
	u8 buf[2];
	struct i2c_msg msg;

	state = FUNC2(sizeof(struct va1j5jf8007s_state), GFP_KERNEL);
	if (!state)
		return NULL;

	state->config = config;
	state->adap = adap;

	fe = &state->fe;
	FUNC3(&fe->ops, &va1j5jf8007s_ops, sizeof(struct dvb_frontend_ops));
	fe->demodulator_priv = state;

	buf[0] = 0x01;
	buf[1] = 0x80;

	msg.addr = state->config->demod_address;
	msg.flags = 0;
	msg.len = sizeof(buf);
	msg.buf = buf;

	if (FUNC0(state->adap, &msg, 1) != 1) {
		FUNC1(state);
		return NULL;
	}

	return fe;
}