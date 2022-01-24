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
struct tda1002x_config {int /*<<< orphan*/  demod_address; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct tda10021_state {int pwm; struct dvb_frontend frontend; struct tda1002x_config const* config; int /*<<< orphan*/  reg0; struct i2c_adapter* i2c; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct tda10021_state*) ; 
 struct tda10021_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * tda10021_inittab ; 
 int /*<<< orphan*/  tda10021_ops ; 
 int FUNC4 (struct tda10021_state*,int) ; 

struct dvb_frontend* FUNC5(const struct tda1002x_config* config,
				     struct i2c_adapter* i2c,
				     u8 pwm)
{
	struct tda10021_state* state = NULL;
	u8 id;

	/* allocate memory for the internal state */
	state = FUNC1(sizeof(struct tda10021_state), GFP_KERNEL);
	if (state == NULL) goto error;

	/* setup the state */
	state->config = config;
	state->i2c = i2c;
	state->pwm = pwm;
	state->reg0 = tda10021_inittab[0];

	/* check if the demod is there */
	id = FUNC4(state, 0x1a);
	if ((id & 0xf0) != 0x70) goto error;

	/* Don't claim TDA10023 */
	if (id == 0x7d)
		goto error;

	FUNC3("TDA10021: i2c-addr = 0x%02x, id = 0x%02x\n",
	       state->config->demod_address, id);

	/* create dvb_frontend */
	FUNC2(&state->frontend.ops, &tda10021_ops, sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error:
	FUNC0(state);
	return NULL;
}