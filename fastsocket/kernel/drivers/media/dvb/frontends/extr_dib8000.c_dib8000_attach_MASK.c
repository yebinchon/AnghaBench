#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct TYPE_5__ {scalar_t__ output_mode; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib8000_state* demodulator_priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; struct i2c_adapter* adap; } ;
struct dib8000_state {TYPE_3__ i2c; int /*<<< orphan*/  i2c_master; int /*<<< orphan*/  timf_default; struct dvb_frontend fe; TYPE_2__ cfg; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;
struct dib8000_config {TYPE_1__* pll; int /*<<< orphan*/  gpio_dir; int /*<<< orphan*/  gpio_val; } ;
struct TYPE_4__ {int /*<<< orphan*/  timf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB8000 ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OUTMODE_MPEG2_FIFO ; 
 scalar_t__ OUTMODE_MPEG2_PAR_GATED_CLK ; 
 scalar_t__ OUTMODE_MPEG2_SERIAL ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 struct dib8000_config dib8000_ops ; 
 int FUNC1 (struct dib8000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib8000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct dib8000_state*) ; 
 struct dib8000_state* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct dib8000_config*,int) ; 

struct dvb_frontend *FUNC9(struct i2c_adapter *i2c_adap, u8 i2c_addr, struct dib8000_config *cfg)
{
	struct dvb_frontend *fe;
	struct dib8000_state *state;

	FUNC5("dib8000_attach");

	state = FUNC7(sizeof(struct dib8000_state), GFP_KERNEL);
	if (state == NULL)
		return NULL;

	FUNC8(&state->cfg, cfg, sizeof(struct dib8000_config));
	state->i2c.adap = i2c_adap;
	state->i2c.addr = i2c_addr;
	state->gpio_val = cfg->gpio_val;
	state->gpio_dir = cfg->gpio_dir;

	/* Ensure the output mode remains at the previous default if it's
	 * not specifically set by the caller.
	 */
	if ((state->cfg.output_mode != OUTMODE_MPEG2_SERIAL) && (state->cfg.output_mode != OUTMODE_MPEG2_PAR_GATED_CLK))
		state->cfg.output_mode = OUTMODE_MPEG2_FIFO;

	fe = &state->fe;
	fe->demodulator_priv = state;
	FUNC8(&state->fe.ops, &dib8000_ops, sizeof(struct dvb_frontend_ops));

	state->timf_default = cfg->pll->timf;

	if (FUNC0(&state->i2c) == 0)
		goto error;

	FUNC4(&state->i2c_master, DIB8000, state->i2c.adap, state->i2c.addr);

	FUNC2(fe);

	FUNC3(state, 285, (FUNC1(state, 285) & ~0x60) | (3 << 5));	/* ber_rs_len = 3 */

	return fe;

 error:
	FUNC6(state);
	return NULL;
}