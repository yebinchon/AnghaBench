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
typedef  int u16 ;
struct zl10353_state {int dummy; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNR ; 
 scalar_t__ debug_regs ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*) ; 
 int FUNC1 (struct zl10353_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u16 *snr)
{
	struct zl10353_state *state = fe->demodulator_priv;
	u8 _snr;

	if (debug_regs)
		FUNC0(fe);

	_snr = FUNC1(state, SNR);
	*snr = (_snr << 8) | _snr;

	return 0;
}