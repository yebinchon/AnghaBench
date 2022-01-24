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
typedef  int u32 ;
struct tda18271_rf_tracking_filter_cal {scalar_t__ rf3; int rf2; int rf_a1; int rf1; int rf_b1; int rf_a2; int rf_b2; } ;
struct tda18271_priv {unsigned char* tda18271_regs; int tm_rfcal; struct tda18271_rf_tracking_filter_cal* rf_cal_state; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  RF_CAL_DC_OVER_DT ; 
 size_t R_EB14 ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_frontend*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC2 (struct dvb_frontend*,int*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dvb_frontend*) ; 
 int FUNC4 (struct dvb_frontend*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dvb_frontend*,size_t,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe,
						     u32 freq)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	struct tda18271_rf_tracking_filter_cal *map = priv->rf_cal_state;
	unsigned char *regs = priv->tda18271_regs;
	int i, ret;
	u8 tm_current, dc_over_dt, rf_tab;
	s32 rfcal_comp, approx;

	/* power up */
	ret = FUNC4(fe, 0, 0, 0);
	if (FUNC6(ret))
		goto fail;

	/* read die current temperature */
	tm_current = FUNC3(fe);

	/* frequency dependent parameters */

	FUNC0(fe, &freq);
	rf_tab = regs[R_EB14];

	i = FUNC2(fe, &freq, NULL);
	if (FUNC6(i))
		return i;

	if ((0 == map[i].rf3) || (freq / 1000 < map[i].rf2)) {
		approx = map[i].rf_a1 * (s32)(freq / 1000 - map[i].rf1) +
			map[i].rf_b1 + rf_tab;
	} else {
		approx = map[i].rf_a2 * (s32)(freq / 1000 - map[i].rf2) +
			map[i].rf_b2 + rf_tab;
	}

	if (approx < 0)
		approx = 0;
	if (approx > 255)
		approx = 255;

	FUNC1(fe, RF_CAL_DC_OVER_DT, &freq, &dc_over_dt);

	/* calculate temperature compensation */
	rfcal_comp = dc_over_dt * (s32)(tm_current - priv->tm_rfcal) / 1000;

	regs[R_EB14] = (unsigned char)(approx + rfcal_comp);
	ret = FUNC5(fe, R_EB14, 1);
fail:
	return ret;
}