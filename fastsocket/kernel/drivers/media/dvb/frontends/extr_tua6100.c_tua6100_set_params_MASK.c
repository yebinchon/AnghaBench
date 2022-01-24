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
typedef  int u32 ;
struct tua6100_priv {int frequency; int /*<<< orphan*/  i2c; int /*<<< orphan*/  i2c_address; } ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct tua6100_priv* tuner_priv; } ;

/* Variables and functions */
 int EIO ; 
 int _P ; 
 int _R ; 
 int _ri ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe,
			      struct dvb_frontend_parameters *params)
{
	struct tua6100_priv *priv = fe->tuner_priv;
	u32 div;
	u32 prediv;
	u8 reg0[] = { 0x00, 0x00 };
	u8 reg1[] = { 0x01, 0x00, 0x00, 0x00 };
	u8 reg2[] = { 0x02, 0x00, 0x00 };
	struct i2c_msg msg0 = { .addr = priv->i2c_address, .flags = 0, .buf = reg0, .len = 2 };
	struct i2c_msg msg1 = { .addr = priv->i2c_address, .flags = 0, .buf = reg1, .len = 4 };
	struct i2c_msg msg2 = { .addr = priv->i2c_address, .flags = 0, .buf = reg2, .len = 3 };

#undef _P
#define _R 4
#define _P 32
#define _ri 4000000

	// setup register 0
	if (params->frequency < 2000000) {
		reg0[1] = 0x03;
	} else {
		reg0[1] = 0x07;
	}

	// setup register 1
	if (params->frequency < 1630000) {
		reg1[1] = 0x2c;
	} else {
		reg1[1] = 0x0c;
	}
	if (_P == 64)
		reg1[1] |= 0x40;
	if (params->frequency >= 1525000)
		reg1[1] |= 0x80;

	// register 2
	reg2[1] = (_R >> 8) & 0x03;
	reg2[2] = _R;
	if (params->frequency < 1455000) {
		reg2[1] |= 0x1c;
	} else if (params->frequency < 1630000) {
		reg2[1] |= 0x0c;
	} else {
		reg2[1] |= 0x1c;
	}

	// The N divisor ratio (note: params->frequency is in kHz, but we need it in Hz)
	prediv = (params->frequency * _R) / (_ri / 1000);
	div = prediv / _P;
	reg1[1] |= (div >> 9) & 0x03;
	reg1[2] = div >> 1;
	reg1[3] = (div << 7);
	priv->frequency = ((div * _P) * (_ri / 1000)) / _R;

	// Finally, calculate and store the value for A
	reg1[3] |= (prediv - (div*_P)) & 0x7f;

#undef _R
#undef _P
#undef _ri

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	if (FUNC0(priv->i2c, &msg0, 1) != 1)
		return -EIO;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	if (FUNC0(priv->i2c, &msg2, 1) != 1)
		return -EIO;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	if (FUNC0(priv->i2c, &msg1, 1) != 1)
		return -EIO;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	return 0;
}