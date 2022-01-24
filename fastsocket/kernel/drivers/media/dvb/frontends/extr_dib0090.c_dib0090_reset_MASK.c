#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int revision; int reset; TYPE_2__* config; } ;
struct TYPE_3__ {int clock_khz; } ;
struct TYPE_4__ {TYPE_1__ io; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ dib0090_defaults ; 
 int FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_frontend*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib0090_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib0090_state*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct dib0090_state *state = fe->tuner_priv;
	u16 l, r, *n;

	FUNC2(fe, state->config);
	state->revision = FUNC0(fe);

	/* Revision definition */
	if (state->revision == 0xff)
		return -EINVAL;
#ifdef EFUSE
	else if ((state->revision & 0x1f) >= 3)	/* Update the efuse : Only available for KROSUS > P1C */
		dib0090_set_EFUSE(state);
#endif

#ifdef CONFIG_TUNER_DIB0090_P1B_SUPPORT
	if (!(state->revision & 0x1))	/* it is P1B - reset is already done */
		return 0;
#endif

	/* Upload the default values */
	n = (u16 *) dib0090_defaults;
	l = FUNC6(n++);
	while (l) {
		r = FUNC6(n++);
		do {
			/* DEBUG_TUNER */
			/* dprintk("%d, %d, %d", l, r, pgm_read_word(n)); */
			FUNC4(state, r, FUNC6(n++));
			r++;
		} while (--l);
		l = FUNC6(n++);
	}

	/* Congigure in function of the crystal */
	if (state->config->io.clock_khz >= 24000)
		l = 1;
	else
		l = 2;
	FUNC4(state, 0x14, l);
	FUNC5("Pll lock : %d", (FUNC1(state, 0x1a) >> 11) & 0x1);

	state->reset = 3;	/* enable iq-offset-calibration and wbd-calibration when tuning next time */

	return 0;
}