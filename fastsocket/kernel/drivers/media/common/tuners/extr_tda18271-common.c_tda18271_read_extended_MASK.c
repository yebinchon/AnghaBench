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
struct TYPE_2__ {int /*<<< orphan*/  adap; int /*<<< orphan*/  addr; } ;
struct tda18271_priv {unsigned char* tda18271_regs; TYPE_1__ i2c_props; } ;
struct i2c_msg {unsigned char* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 int DBG_REG ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int R_EB16 ; 
 int R_EB17 ; 
 int R_EB19 ; 
 int R_EB20 ; 
 int R_EB9 ; 
 int TDA18271_NUM_REGS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int tda18271_debug ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	unsigned char regdump[TDA18271_NUM_REGS];
	unsigned char buf = 0x00;
	int ret, i;
	struct i2c_msg msg[] = {
		{ .addr = priv->i2c_props.addr, .flags = 0,
		  .buf = &buf, .len = 1 },
		{ .addr = priv->i2c_props.addr, .flags = I2C_M_RD,
		  .buf = regdump, .len = TDA18271_NUM_REGS }
	};

	FUNC2(fe, 1);

	/* read all registers */
	ret = FUNC0(priv->i2c_props.adap, msg, 2);

	FUNC2(fe, 0);

	if (ret != 2)
		FUNC3("ERROR: i2c_transfer returned: %d\n", ret);

	for (i = 0; i < TDA18271_NUM_REGS; i++) {
		/* don't update write-only registers */
		if ((i != R_EB9)  &&
		    (i != R_EB16) &&
		    (i != R_EB17) &&
		    (i != R_EB19) &&
		    (i != R_EB20))
		regs[i] = regdump[i];
	}

	if (tda18271_debug & DBG_REG)
		FUNC1(fe, 1);

	return (ret == 2 ? 0 : ret);
}