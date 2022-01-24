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
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct cx22700_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct cx22700_config const* config; } ;
struct cx22700_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cx22700_ops ; 
 scalar_t__ FUNC0 (struct cx22700_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx22700_state*) ; 
 struct cx22700_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct dvb_frontend* FUNC4(const struct cx22700_config* config,
				    struct i2c_adapter* i2c)
{
	struct cx22700_state* state = NULL;

	/* allocate memory for the internal state */
	state = FUNC2(sizeof(struct cx22700_state), GFP_KERNEL);
	if (state == NULL) goto error;

	/* setup the state */
	state->config = config;
	state->i2c = i2c;

	/* check if the demod is there */
	if (FUNC0(state, 0x07) < 0) goto error;

	/* create dvb_frontend */
	FUNC3(&state->frontend.ops, &cx22700_ops, sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error:
	FUNC1(state);
	return NULL;
}