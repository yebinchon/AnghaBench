#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_pll_priv {int frequency; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/ * i2c; int /*<<< orphan*/  pll_i2c_address; } ;
struct TYPE_7__ {int /*<<< orphan*/  bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_4__ u; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ info; int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_2__ ops; struct dvb_pll_priv* tuner_priv; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FE_OFDM ; 
 int FUNC0 (struct dvb_frontend*,int /*<<< orphan*/ *,struct dvb_frontend_parameters*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe,
			      struct dvb_frontend_parameters *params)
{
	struct dvb_pll_priv *priv = fe->tuner_priv;
	u8 buf[4];
	struct i2c_msg msg =
		{ .addr = priv->pll_i2c_address, .flags = 0,
		  .buf = buf, .len = sizeof(buf) };
	int result;
	u32 frequency = 0;

	if (priv->i2c == NULL)
		return -EINVAL;

	if ((result = FUNC0(fe, buf, params)) < 0)
		return result;
	else
		frequency = result;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);
	if ((result = FUNC1(priv->i2c, &msg, 1)) != 1) {
		return result;
	}

	priv->frequency = frequency;
	priv->bandwidth = (fe->ops.info.type == FE_OFDM) ? params->u.ofdm.bandwidth : 0;

	return 0;
}