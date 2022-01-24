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
typedef  int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int wbd_ref; } ;

/* Variables and functions */
 int FUNC0 (struct dib8000_state*,int,int) ; 

int FUNC1(struct dvb_frontend *fe, u16 value)
{
	struct dib8000_state *state = fe->demodulator_priv;
	if (value > 4095)
		value = 4095;
	state->wbd_ref = value;
	return FUNC0(state, 106, value);
}