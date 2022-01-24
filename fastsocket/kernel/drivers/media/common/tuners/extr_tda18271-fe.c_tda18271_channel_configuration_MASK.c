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
typedef  scalar_t__ u32 ;
struct tda18271_std_map_item {int agc_mode; int std; int if_lvl; int fm_rfn; unsigned char rfagc_top; int if_freq; } ;
struct tda18271_priv {unsigned char* tda18271_regs; scalar_t__ id; int role; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 size_t R_CPD ; 
 size_t R_EB1 ; 
 size_t R_EB22 ; 
 size_t R_EP1 ; 
 size_t R_EP3 ; 
 size_t R_EP4 ; 
 size_t R_MPD ; 
 size_t R_TM ; 
 scalar_t__ TDA18271HDC2 ; 
#define  TDA18271_MASTER 129 
#define  TDA18271_SLAVE 128 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct dvb_frontend*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (struct dvb_frontend*) ; 
 int FUNC9 (struct dvb_frontend*,size_t,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct dvb_frontend *fe,
					  struct tda18271_std_map_item *map,
					  u32 freq, u32 bw)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	int ret;
	u32 N;

	/* update TV broadcast parameters */

	/* set standard */
	regs[R_EP3]  &= ~0x1f; /* clear std bits */
	regs[R_EP3]  |= (map->agc_mode << 3) | map->std;

	if (priv->id == TDA18271HDC2) {
		/* set rfagc to high speed mode */
		regs[R_EP3] &= ~0x04;
	}

	/* set cal mode to normal */
	regs[R_EP4]  &= ~0x03;

	/* update IF output level */
	regs[R_EP4]  &= ~0x1c; /* clear if level bits */
	regs[R_EP4]  |= (map->if_lvl << 2);

	/* update FM_RFn */
	regs[R_EP4]  &= ~0x80;
	regs[R_EP4]  |= map->fm_rfn << 7;

	/* update rf top / if top */
	regs[R_EB22]  = 0x00;
	regs[R_EB22] |= map->rfagc_top;
	ret = FUNC9(fe, R_EB22, 1);
	if (FUNC10(ret))
		goto fail;

	/* --------------------------------------------------------------- */

	/* disable Power Level Indicator */
	regs[R_EP1]  |= 0x40;

	/* make sure thermometer is off */
	regs[R_TM]   &= ~0x10;

	/* frequency dependent parameters */

	FUNC5(fe, &freq);

	FUNC2(fe, &freq);

	FUNC7(fe, &freq);

	FUNC4(fe, &freq);

	/* --------------------------------------------------------------- */

	/* dual tuner and agc1 extra configuration */

	switch (priv->role) {
	case TDA18271_MASTER:
		regs[R_EB1]  |= 0x04; /* main vco */
		break;
	case TDA18271_SLAVE:
		regs[R_EB1]  &= ~0x04; /* cal vco */
		break;
	}

	/* agc1 always active */
	regs[R_EB1]  &= ~0x02;

	/* agc1 has priority on agc2 */
	regs[R_EB1]  &= ~0x01;

	ret = FUNC9(fe, R_EB1, 1);
	if (FUNC10(ret))
		goto fail;

	/* --------------------------------------------------------------- */

	N = map->if_freq * 1000 + freq;

	switch (priv->role) {
	case TDA18271_MASTER:
		FUNC6(fe, N);
		FUNC8(fe);
		FUNC9(fe, R_MPD, 4);
		break;
	case TDA18271_SLAVE:
		FUNC3(fe, N);
		FUNC9(fe, R_CPD, 4);

		regs[R_MPD] = regs[R_CPD] & 0x7f;
		FUNC8(fe);
		FUNC9(fe, R_MPD, 1);
		break;
	}

	ret = FUNC9(fe, R_TM, 7);
	if (FUNC10(ret))
		goto fail;

	/* force charge pump source */
	FUNC0(fe, 1);

	FUNC1(1);

	/* return pll to normal operation */
	FUNC0(fe, 0);

	FUNC1(20);

	if (priv->id == TDA18271HDC2) {
		/* set rfagc to normal speed mode */
		if (map->fm_rfn)
			regs[R_EP3] &= ~0x04;
		else
			regs[R_EP3] |= 0x04;
		ret = FUNC9(fe, R_EP3, 1);
	}
fail:
	return ret;
}