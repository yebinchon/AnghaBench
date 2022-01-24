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
struct l64781_state {scalar_t__ first; } ;
struct dvb_frontend {struct l64781_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l64781_state*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct l64781_state*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend* fe)
{
	struct l64781_state* state = fe->demodulator_priv;

	FUNC2 (state);

	/* Power up */
	FUNC0 (state, 0x3e, 0xa5);

	/* Reset hard */
	FUNC0 (state, 0x2a, 0x04);
	FUNC0 (state, 0x2a, 0x00);

	/* Set tuner specific things */
	/* AFC_POL, set also in reset_afc */
	FUNC0 (state, 0x07, 0x8e);

	/* Use internal ADC */
	FUNC0 (state, 0x0b, 0x81);

	/* AGC loop gain, and polarity is positive */
	FUNC0 (state, 0x0c, 0x84);

	/* Internal ADC outputs two's complement */
	FUNC0 (state, 0x0d, 0x8c);

	/* With ppm=8000, it seems the DTR_SENSITIVITY will result in
	   value of 2 with all possible bandwidths and guard
	   intervals, which is the initial value anyway. */
	/*l64781_writereg (state, 0x19, 0x92);*/

	/* Everything is two's complement, soft bit and CSI_OUT too */
	FUNC0 (state, 0x1e, 0x09);

	/* delay a bit after first init attempt */
	if (state->first) {
		state->first = 0;
		FUNC1(200);
	}

	return 0;
}