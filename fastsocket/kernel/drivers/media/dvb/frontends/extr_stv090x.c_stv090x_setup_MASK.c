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
struct stv090x_state {scalar_t__ device; TYPE_1__* internal; struct stv090x_config* config; } ;
struct stv090x_reg {int data; int /*<<< orphan*/  addr; } ;
struct stv090x_config {int clk_mode; scalar_t__ adc1_range; scalar_t__ adc2_range; scalar_t__ diseqc_envelope_mode; int /*<<< orphan*/  repeater_level; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {int dev_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADC1_INMODE_FIELD ; 
 int /*<<< orphan*/  ADC2_INMODE_FIELD ; 
 unsigned long FUNC0 (struct stv090x_reg*) ; 
 int /*<<< orphan*/  ENARPT_LEVEL_FIELD ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  SEC_MINI_A ; 
 scalar_t__ STV0900 ; 
 scalar_t__ STV0903 ; 
 scalar_t__ STV090x_ADC_1Vpp ; 
 int /*<<< orphan*/  STV090x_I2CCFG ; 
 int /*<<< orphan*/  STV090x_MID ; 
 int /*<<< orphan*/  STV090x_NCOARSE ; 
 int /*<<< orphan*/  STV090x_P1_DMDISTATE ; 
 int /*<<< orphan*/  STV090x_P1_I2CRPT ; 
 int /*<<< orphan*/  STV090x_P1_TNRCFG ; 
 int /*<<< orphan*/  STV090x_P2_DMDISTATE ; 
 int /*<<< orphan*/  STV090x_P2_I2CRPT ; 
 int /*<<< orphan*/  STV090x_P2_TNRCFG ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STV090x_SYNTCTRL ; 
 int /*<<< orphan*/  STV090x_TSGENERAL ; 
 int /*<<< orphan*/  STV090x_TSTRES0 ; 
 int /*<<< orphan*/  STV090x_TSTTNR1 ; 
 int /*<<< orphan*/  STV090x_TSTTNR3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct stv090x_reg* stv0900_cut20_val ; 
 struct stv090x_reg* stv0900_initval ; 
 struct stv090x_reg* stv0903_cut20_val ; 
 struct stv090x_reg* stv0903_initval ; 
 void* FUNC5 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe)
{
	struct stv090x_state *state = fe->demodulator_priv;
	const struct stv090x_config *config = state->config;
	const struct stv090x_reg *stv090x_initval = NULL;
	const struct stv090x_reg *stv090x_cut20_val = NULL;
	unsigned long t1_size = 0, t2_size = 0;
	u32 reg = 0;

	int i;

	if (state->device == STV0900) {
		FUNC3(FE_DEBUG, 1, "Initializing STV0900");
		stv090x_initval = stv0900_initval;
		t1_size = FUNC0(stv0900_initval);
		stv090x_cut20_val = stv0900_cut20_val;
		t2_size = FUNC0(stv0900_cut20_val);
	} else if (state->device == STV0903) {
		FUNC3(FE_DEBUG, 1, "Initializing STV0903");
		stv090x_initval = stv0903_initval;
		t1_size = FUNC0(stv0903_initval);
		stv090x_cut20_val = stv0903_cut20_val;
		t2_size = FUNC0(stv0903_cut20_val);
	}

	/* STV090x init */

	/* Stop Demod */
	if (FUNC7(state, STV090x_P1_DMDISTATE, 0x5c) < 0)
		goto err;
	if (FUNC7(state, STV090x_P2_DMDISTATE, 0x5c) < 0)
		goto err;

	FUNC4(5);

	/* Set No Tuner Mode */
	if (FUNC7(state, STV090x_P1_TNRCFG, 0x6c) < 0)
		goto err;
	if (FUNC7(state, STV090x_P2_TNRCFG, 0x6c) < 0)
		goto err;

	/* I2C repeater OFF */
	FUNC2(reg, ENARPT_LEVEL_FIELD, config->repeater_level);
	if (FUNC7(state, STV090x_P1_I2CRPT, reg) < 0)
		goto err;
	if (FUNC7(state, STV090x_P2_I2CRPT, reg) < 0)
		goto err;

	if (FUNC7(state, STV090x_NCOARSE, 0x13) < 0) /* set PLL divider */
		goto err;
	FUNC4(5);
	if (FUNC7(state, STV090x_I2CCFG, 0x08) < 0) /* 1/41 oversampling */
		goto err;
	if (FUNC7(state, STV090x_SYNTCTRL, 0x20 | config->clk_mode) < 0) /* enable PLL */
		goto err;
	FUNC4(5);

	/* write initval */
	FUNC3(FE_DEBUG, 1, "Setting up initial values");
	for (i = 0; i < t1_size; i++) {
		if (FUNC7(state, stv090x_initval[i].addr, stv090x_initval[i].data) < 0)
			goto err;
	}

	state->internal->dev_ver = FUNC5(state, STV090x_MID);
	if (state->internal->dev_ver >= 0x20) {
		if (FUNC7(state, STV090x_TSGENERAL, 0x0c) < 0)
			goto err;

		/* write cut20_val*/
		FUNC3(FE_DEBUG, 1, "Setting up Cut 2.0 initial values");
		for (i = 0; i < t2_size; i++) {
			if (FUNC7(state, stv090x_cut20_val[i].addr, stv090x_cut20_val[i].data) < 0)
				goto err;
		}

	} else if (state->internal->dev_ver < 0x20) {
		FUNC3(FE_ERROR, 1, "ERROR: Unsupported Cut: 0x%02x!",
			state->internal->dev_ver);

		goto err;
	} else if (state->internal->dev_ver > 0x30) {
		/* we shouldn't bail out from here */
		FUNC3(FE_ERROR, 1, "INFO: Cut: 0x%02x probably incomplete support!",
			state->internal->dev_ver);
	}

	/* ADC1 range */
	reg = FUNC5(state, STV090x_TSTTNR1);
	FUNC1(reg, ADC1_INMODE_FIELD,
		(config->adc1_range == STV090x_ADC_1Vpp) ? 0 : 1);
	if (FUNC7(state, STV090x_TSTTNR1, reg) < 0)
		goto err;

	/* ADC2 range */
	reg = FUNC5(state, STV090x_TSTTNR3);
	FUNC1(reg, ADC2_INMODE_FIELD,
		(config->adc2_range == STV090x_ADC_1Vpp) ? 0 : 1);
	if (FUNC7(state, STV090x_TSTTNR3, reg) < 0)
		goto err;

	if (FUNC7(state, STV090x_TSTRES0, 0x80) < 0)
		goto err;
	if (FUNC7(state, STV090x_TSTRES0, 0x00) < 0)
		goto err;

	/* workaround for stuck DiSEqC output */
	if (config->diseqc_envelope_mode)
		FUNC6(fe, SEC_MINI_A);

	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	return -1;
}