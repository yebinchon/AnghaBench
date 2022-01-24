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
struct mc44s803_priv {int frequency; } ;
struct dvb_frontend_parameters {int frequency; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct mc44s803_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  MC44S803_ADDR ; 
 int /*<<< orphan*/  MC44S803_AT ; 
 int /*<<< orphan*/  MC44S803_DA ; 
 int MC44S803_IF1 ; 
 int MC44S803_IF2 ; 
 int /*<<< orphan*/  MC44S803_LO1 ; 
 int /*<<< orphan*/  MC44S803_LO2 ; 
 int /*<<< orphan*/  MC44S803_LO_REF ; 
 int MC44S803_OSC ; 
 int /*<<< orphan*/  MC44S803_R1 ; 
 int /*<<< orphan*/  MC44S803_R2 ; 
 int /*<<< orphan*/  MC44S803_REFBUF_EN ; 
 int MC44S803_REG_DIGTUNE ; 
 int MC44S803_REG_LO1 ; 
 int MC44S803_REG_LO2 ; 
 int MC44S803_REG_REFDIV ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mc44s803_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe,
			       struct dvb_frontend_parameters *params)
{
	struct mc44s803_priv *priv = fe->tuner_priv;
	u32 r1, r2, n1, n2, lo1, lo2, freq, val;
	int err;

	priv->frequency = params->frequency;

	r1 = MC44S803_OSC / 1000000;
	r2 = MC44S803_OSC /  100000;

	n1 = (params->frequency + MC44S803_IF1 + 500000) / 1000000;
	freq = MC44S803_OSC / r1 * n1;
	lo1 = ((60 * n1) + (r1 / 2)) / r1;
	freq = freq - params->frequency;

	n2 = (freq - MC44S803_IF2 + 50000) / 100000;
	lo2 = ((60 * n2) + (r2 / 2)) / r2;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 1);

	val = FUNC0(MC44S803_REG_REFDIV, MC44S803_ADDR) |
	      FUNC0(r1-1, MC44S803_R1) |
	      FUNC0(r2-1, MC44S803_R2) |
	      FUNC0(1, MC44S803_REFBUF_EN);

	err = FUNC1(priv, val);
	if (err)
		goto exit;

	val = FUNC0(MC44S803_REG_LO1, MC44S803_ADDR) |
	      FUNC0(n1-2, MC44S803_LO1);

	err = FUNC1(priv, val);
	if (err)
		goto exit;

	val = FUNC0(MC44S803_REG_LO2, MC44S803_ADDR) |
	      FUNC0(n2-2, MC44S803_LO2);

	err = FUNC1(priv, val);
	if (err)
		goto exit;

	val = FUNC0(MC44S803_REG_DIGTUNE, MC44S803_ADDR) |
	      FUNC0(1, MC44S803_DA) |
	      FUNC0(lo1, MC44S803_LO_REF) |
	      FUNC0(1, MC44S803_AT);

	err = FUNC1(priv, val);
	if (err)
		goto exit;

	val = FUNC0(MC44S803_REG_DIGTUNE, MC44S803_ADDR) |
	      FUNC0(2, MC44S803_DA) |
	      FUNC0(lo2, MC44S803_LO_REF) |
	      FUNC0(1, MC44S803_AT);

	err = FUNC1(priv, val);
	if (err)
		goto exit;

	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	return 0;

exit:
	if (fe->ops.i2c_gate_ctrl)
		fe->ops.i2c_gate_ctrl(fe, 0);

	FUNC2(KERN_WARNING, "I/O Error\n");
	return err;
}