#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* agcf ) (struct dvb_frontend*) ;scalar_t__ config; } ;
struct tda8290_priv {int tda8290_easy_mode; int /*<<< orphan*/  i2c_props; TYPE_3__ cfg; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_analog_params ) (struct dvb_frontend*,struct analog_parameters*) ;} ;
struct TYPE_7__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct tda8290_priv* analog_demod_priv; } ;
struct analog_parameters {scalar_t__ mode; } ;
struct TYPE_9__ {unsigned char* seq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*) ; 
 scalar_t__ V4L2_TUNER_RADIO ; 
 scalar_t__ deemphasis_50 ; 
 TYPE_4__* fm_mode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,struct analog_parameters*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,struct analog_parameters*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC9(struct dvb_frontend *fe,
			       struct analog_parameters *params)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;

	unsigned char soft_reset[]  = { 0x00, 0x00 };
	unsigned char easy_mode[]   = { 0x01, priv->tda8290_easy_mode };
	unsigned char expert_mode[] = { 0x01, 0x80 };
	unsigned char agc_out_on[]  = { 0x02, 0x00 };
	unsigned char gainset_off[] = { 0x28, 0x14 };
	unsigned char if_agc_spd[]  = { 0x0f, 0x88 };
	unsigned char adc_head_6[]  = { 0x05, 0x04 };
	unsigned char adc_head_9[]  = { 0x05, 0x02 };
	unsigned char adc_head_12[] = { 0x05, 0x01 };
	unsigned char pll_bw_nom[]  = { 0x0d, 0x47 };
	unsigned char pll_bw_low[]  = { 0x0d, 0x27 };
	unsigned char gainset_2[]   = { 0x28, 0x64 };
	unsigned char agc_rst_on[]  = { 0x0e, 0x0b };
	unsigned char agc_rst_off[] = { 0x0e, 0x09 };
	unsigned char if_agc_set[]  = { 0x0f, 0x81 };
	unsigned char addr_adc_sat  = 0x1a;
	unsigned char addr_agc_stat = 0x1d;
	unsigned char addr_pll_stat = 0x1b;
	unsigned char adc_sat, agc_stat,
		      pll_stat;
	int i;

	FUNC2(fe, params);

	if (priv->cfg.config)
		FUNC6("tda827xa config is 0x%02x\n", priv->cfg.config);
	FUNC7(&priv->i2c_props, easy_mode, 2);
	FUNC7(&priv->i2c_props, agc_out_on, 2);
	FUNC7(&priv->i2c_props, soft_reset, 2);
	FUNC1(1);

	if (params->mode == V4L2_TUNER_RADIO) {
		unsigned char deemphasis[]  = { 0x13, 1 };

		/* FIXME: allow using a different deemphasis */

		if (deemphasis_50)
			deemphasis[1] = 2;

		for (i = 0; i < FUNC0(fm_mode); i++)
			FUNC7(&priv->i2c_props, fm_mode[i].seq, 2);

		FUNC7(&priv->i2c_props, deemphasis, 2);
	} else {
		expert_mode[1] = priv->tda8290_easy_mode + 0x80;
		FUNC7(&priv->i2c_props, expert_mode, 2);
		FUNC7(&priv->i2c_props, gainset_off, 2);
		FUNC7(&priv->i2c_props, if_agc_spd, 2);
		if (priv->tda8290_easy_mode & 0x60)
			FUNC7(&priv->i2c_props, adc_head_9, 2);
		else
			FUNC7(&priv->i2c_props, adc_head_6, 2);
		FUNC7(&priv->i2c_props, pll_bw_nom, 2);
	}


	FUNC5(fe, 1);

	if (fe->ops.tuner_ops.set_analog_params)
		fe->ops.tuner_ops.set_analog_params(fe, params);

	for (i = 0; i < 3; i++) {
		FUNC8(&priv->i2c_props,
					 &addr_pll_stat, 1, &pll_stat, 1);
		if (pll_stat & 0x80) {
			FUNC8(&priv->i2c_props,
						 &addr_adc_sat, 1,
						 &adc_sat, 1);
			FUNC8(&priv->i2c_props,
						 &addr_agc_stat, 1,
						 &agc_stat, 1);
			FUNC6("tda8290 is locked, AGC: %d\n", agc_stat);
			break;
		} else {
			FUNC6("tda8290 not locked, no signal?\n");
			FUNC1(100);
		}
	}
	/* adjust headroom resp. gain */
	if ((agc_stat > 115) || (!(pll_stat & 0x80) && (adc_sat < 20))) {
		FUNC6("adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\n",
			   agc_stat, adc_sat, pll_stat & 0x80);
		FUNC7(&priv->i2c_props, gainset_2, 2);
		FUNC1(100);
		FUNC8(&priv->i2c_props,
					 &addr_agc_stat, 1, &agc_stat, 1);
		FUNC8(&priv->i2c_props,
					 &addr_pll_stat, 1, &pll_stat, 1);
		if ((agc_stat > 115) || !(pll_stat & 0x80)) {
			FUNC6("adjust gain, step 2. Agc: %d, lock: %d\n",
				   agc_stat, pll_stat & 0x80);
			if (priv->cfg.agcf)
				priv->cfg.agcf(fe);
			FUNC1(100);
			FUNC8(&priv->i2c_props,
						 &addr_agc_stat, 1,
						 &agc_stat, 1);
			FUNC8(&priv->i2c_props,
						 &addr_pll_stat, 1,
						 &pll_stat, 1);
			if((agc_stat > 115) || !(pll_stat & 0x80)) {
				FUNC6("adjust gain, step 3. Agc: %d\n", agc_stat);
				FUNC7(&priv->i2c_props, adc_head_12, 2);
				FUNC7(&priv->i2c_props, pll_bw_low, 2);
				FUNC1(100);
			}
		}
	}

	/* l/ l' deadlock? */
	if(priv->tda8290_easy_mode & 0x60) {
		FUNC8(&priv->i2c_props,
					 &addr_adc_sat, 1,
					 &adc_sat, 1);
		FUNC8(&priv->i2c_props,
					 &addr_pll_stat, 1,
					 &pll_stat, 1);
		if ((adc_sat > 20) || !(pll_stat & 0x80)) {
			FUNC6("trying to resolve SECAM L deadlock\n");
			FUNC7(&priv->i2c_props, agc_rst_on, 2);
			FUNC1(40);
			FUNC7(&priv->i2c_props, agc_rst_off, 2);
		}
	}

	FUNC5(fe, 0);
	FUNC7(&priv->i2c_props, if_agc_set, 2);
}