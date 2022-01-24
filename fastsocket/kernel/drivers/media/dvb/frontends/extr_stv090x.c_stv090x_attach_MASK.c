#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {struct stv090x_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct stv090x_state {int demod; scalar_t__ demod_mode; scalar_t__ device; struct dvb_frontend frontend; TYPE_1__* internal; struct stv090x_config const* config; struct i2c_adapter* i2c; int /*<<< orphan*/  rolloff; int /*<<< orphan*/ * verbose; } ;
struct stv090x_internal {int dummy; } ;
struct stv090x_dev {TYPE_1__* internal; } ;
struct stv090x_config {scalar_t__ demod_mode; scalar_t__ device; int /*<<< orphan*/  address; } ;
struct i2c_adapter {int dummy; } ;
typedef  enum stv090x_demodulator { ____Placeholder_stv090x_demodulator } stv090x_demodulator ;
struct TYPE_3__ {int num_used; scalar_t__ dev_ver; int /*<<< orphan*/  tuner_lock; int /*<<< orphan*/  demod_lock; int /*<<< orphan*/  i2c_addr; struct i2c_adapter* i2c_adap; scalar_t__ mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  FE_INFO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STV0900 ; 
 scalar_t__ STV090x_DUAL ; 
 int /*<<< orphan*/  STV090x_RO_35 ; 
 struct stv090x_dev* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,...) ; 
 struct stv090x_dev* FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stv090x_state*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct stv090x_state* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stv090x_ops ; 
 scalar_t__ FUNC7 (struct dvb_frontend*) ; 
 scalar_t__ FUNC8 (struct dvb_frontend*) ; 
 scalar_t__ FUNC9 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  verbose ; 

struct dvb_frontend *FUNC10(const struct stv090x_config *config,
				    struct i2c_adapter *i2c,
				    enum stv090x_demodulator demod)
{
	struct stv090x_state *state = NULL;
	struct stv090x_dev *temp_int;

	state = FUNC5(sizeof (struct stv090x_state), GFP_KERNEL);
	if (state == NULL)
		goto error;

	state->verbose				= &verbose;
	state->config				= config;
	state->i2c				= i2c;
	state->frontend.ops			= stv090x_ops;
	state->frontend.demodulator_priv	= state;
	state->demod				= demod;
	state->demod_mode 			= config->demod_mode; /* Single or Dual mode */
	state->device				= config->device;
	state->rolloff				= STV090x_RO_35; /* default */

	temp_int = FUNC2(state->i2c,
				state->config->address);

	if ((temp_int != NULL) && (state->demod_mode == STV090x_DUAL)) {
		state->internal = temp_int->internal;
		state->internal->num_used++;
		FUNC1(FE_INFO, 1, "Found Internal Structure!");
		FUNC1(FE_ERROR, 1, "Attaching %s demodulator(%d) Cut=0x%02x",
			state->device == STV0900 ? "STV0900" : "STV0903",
			demod,
			state->internal->dev_ver);
		return &state->frontend;
	} else {
		state->internal = FUNC4(sizeof(struct stv090x_internal),
					  GFP_KERNEL);
		temp_int = FUNC0(state->internal);
		state->internal->num_used = 1;
		state->internal->mclk = 0;
		state->internal->dev_ver = 0;
		state->internal->i2c_adap = state->i2c;
		state->internal->i2c_addr = state->config->address;
		FUNC1(FE_INFO, 1, "Create New Internal Structure!");
	}

	FUNC6(&state->internal->demod_lock);
	FUNC6(&state->internal->tuner_lock);

	if (FUNC8(&state->frontend) < 0) {
		FUNC1(FE_ERROR, 1, "Error putting device to sleep");
		goto error;
	}

	if (FUNC7(&state->frontend) < 0) {
		FUNC1(FE_ERROR, 1, "Error setting up device");
		goto error;
	}
	if (FUNC9(&state->frontend) < 0) {
		FUNC1(FE_ERROR, 1, "Error waking device");
		goto error;
	}

	FUNC1(FE_ERROR, 1, "Attaching %s demodulator(%d) Cut=0x%02x",
	       state->device == STV0900 ? "STV0900" : "STV0903",
	       demod,
	       state->internal->dev_ver);

	return &state->frontend;

error:
	FUNC3(state);
	return NULL;
}