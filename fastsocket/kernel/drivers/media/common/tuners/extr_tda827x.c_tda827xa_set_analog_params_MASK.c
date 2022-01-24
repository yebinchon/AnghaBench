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
typedef  int u32 ;
typedef  int /*<<< orphan*/  tuner_reg ;
struct tda827x_priv {int sgIF; int lpsel; unsigned int frequency; int /*<<< orphan*/  i2c_addr; } ;
struct i2c_msg {unsigned char* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend {struct tda827x_priv* tuner_priv; } ;
struct analog_parameters {unsigned int frequency; scalar_t__ mode; } ;
struct TYPE_2__ {int lomax; int spd; int svco; int sbs; int gc3; int scr; } ;

/* Variables and functions */
 scalar_t__ I2C_M_RD ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,struct analog_parameters*) ; 
 TYPE_1__* tda827xa_analog ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int,struct analog_parameters*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe,
				      struct analog_parameters *params)
{
	unsigned char tuner_reg[11];
	u32 N;
	int i;
	struct tda827x_priv *priv = fe->tuner_priv;
	struct i2c_msg msg = { .addr = priv->i2c_addr, .flags = 0,
			       .buf = tuner_reg, .len = sizeof(tuner_reg) };
	unsigned int freq = params->frequency;

	FUNC2(fe, params);

	FUNC3(fe, 1, params);
	FUNC1(10);

	if (params->mode == V4L2_TUNER_RADIO)
		freq = freq / 1000;

	N = freq + priv->sgIF;

	i = 0;
	while (tda827xa_analog[i].lomax < N * 62500) {
		if (tda827xa_analog[i + 1].lomax == 0)
			break;
		i++;
	}

	N = N << tda827xa_analog[i].spd;

	tuner_reg[0] = 0;
	tuner_reg[1] = (unsigned char)(N>>8);
	tuner_reg[2] = (unsigned char) N;
	tuner_reg[3] = 0;
	tuner_reg[4] = 0x16;
	tuner_reg[5] = (tda827xa_analog[i].spd << 5) +
		       (tda827xa_analog[i].svco << 3) +
			tda827xa_analog[i].sbs;
	tuner_reg[6] = 0x8b + (tda827xa_analog[i].gc3 << 4);
	tuner_reg[7] = 0x1c;
	tuner_reg[8] = 4;
	tuner_reg[9] = 0x20;
	tuner_reg[10] = 0x00;
	msg.len = 11;
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0x90;
	tuner_reg[1] = 0xff;
	tuner_reg[2] = 0xe0;
	tuner_reg[3] = 0;
	tuner_reg[4] = 0x99 + (priv->lpsel << 1);
	msg.len = 5;
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0xa0;
	tuner_reg[1] = 0xc0;
	msg.len = 2;
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0x30;
	tuner_reg[1] = 0x10 + tda827xa_analog[i].scr;
	FUNC4(fe, &msg, 1);

	msg.flags = I2C_M_RD;
	FUNC4(fe, &msg, 1);
	msg.flags = 0;
	tuner_reg[1] >>= 4;
	FUNC0("AGC2 gain is: %d\n", tuner_reg[1]);
	if (tuner_reg[1] < 1)
		FUNC3(fe, 0, params);

	FUNC1(100);
	tuner_reg[0] = 0x60;
	tuner_reg[1] = 0x3c;
	FUNC4(fe, &msg, 1);

	FUNC1(163);
	tuner_reg[0] = 0x50;
	tuner_reg[1] = 0x8f + (tda827xa_analog[i].gc3 << 4);
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0x80;
	tuner_reg[1] = 0x28;
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0xb0;
	tuner_reg[1] = 0x01;
	FUNC4(fe, &msg, 1);

	tuner_reg[0] = 0xc0;
	tuner_reg[1] = 0x19 + (priv->lpsel << 1);
	FUNC4(fe, &msg, 1);

	priv->frequency = params->frequency;

	return 0;
}