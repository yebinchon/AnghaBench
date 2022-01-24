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
typedef  int /*<<< orphan*/  zl10353_reset_attach ;
typedef  int u8 ;
struct TYPE_2__ {int clock_ctl_1; int pll_0; scalar_t__ parallel_ts; } ;
struct zl10353_state {TYPE_1__ config; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;

/* Variables and functions */
 scalar_t__ debug_regs ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct zl10353_state*,int) ; 
 int FUNC2 (struct dvb_frontend*,int*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct zl10353_state *state = fe->demodulator_priv;
	u8 zl10353_reset_attach[6] = { 0x50, 0x03, 0x64, 0x46, 0x15, 0x0F };
	int rc = 0;

	if (debug_regs)
		FUNC0(fe);
	if (state->config.parallel_ts)
		zl10353_reset_attach[2] &= ~0x20;
	if (state->config.clock_ctl_1)
		zl10353_reset_attach[3] = state->config.clock_ctl_1;
	if (state->config.pll_0)
		zl10353_reset_attach[4] = state->config.pll_0;

	/* Do a "hard" reset if not already done */
	if (FUNC1(state, 0x50) != zl10353_reset_attach[1] ||
	    FUNC1(state, 0x51) != zl10353_reset_attach[2]) {
		rc = FUNC2(fe, zl10353_reset_attach,
				   sizeof(zl10353_reset_attach));
		if (debug_regs)
			FUNC0(fe);
	}

	return 0;
}