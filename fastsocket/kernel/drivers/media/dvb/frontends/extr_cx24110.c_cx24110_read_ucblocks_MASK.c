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
typedef  int u32 ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int lastbler; } ;

/* Variables and functions */
 int FUNC0 (struct cx24110_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24110_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, u32* ucblocks)
{
	struct cx24110_state *state = fe->demodulator_priv;
	u32 lastbyer;

	if(FUNC0(state,0x10)&0x40) {
		/* the RS error counter has finished one counting window */
		FUNC1(state,0x10,0x60); /* select the byer reg */
		lastbyer=FUNC0(state,0x12)|
			(FUNC0(state,0x13)<<8)|
			(FUNC0(state,0x14)<<16);
		FUNC1(state,0x10,0x70); /* select the bler reg */
		state->lastbler=FUNC0(state,0x12)|
			(FUNC0(state,0x13)<<8)|
			(FUNC0(state,0x14)<<16);
		FUNC1(state,0x10,0x20); /* start new count window */
	}
	*ucblocks = state->lastbler;

	return 0;
}