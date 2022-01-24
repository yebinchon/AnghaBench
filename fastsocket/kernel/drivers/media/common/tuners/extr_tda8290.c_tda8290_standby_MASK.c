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
struct TYPE_2__ {int /*<<< orphan*/  adap; } ;
struct tda8290_priv {int ver; TYPE_1__ i2c_props; int /*<<< orphan*/  tda827x_addr; } ;
struct i2c_msg {unsigned char* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;

/* Variables and functions */
 int TDA8275A ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char*,int) ; 

__attribute__((used)) static void FUNC3(struct dvb_frontend *fe)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;

	unsigned char cb1[] = { 0x30, 0xD0 };
	unsigned char tda8290_standby[] = { 0x00, 0x02 };
	unsigned char tda8290_agc_tri[] = { 0x02, 0x20 };
	struct i2c_msg msg = {.addr = priv->tda827x_addr, .flags=0, .buf=cb1, .len = 2};

	FUNC1(fe, 1);
	if (priv->ver & TDA8275A)
		cb1[1] = 0x90;
	FUNC0(priv->i2c_props.adap, &msg, 1);
	FUNC1(fe, 0);
	FUNC2(&priv->i2c_props, tda8290_agc_tri, 2);
	FUNC2(&priv->i2c_props, tda8290_standby, 2);
}