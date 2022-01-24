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
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;
typedef  scalar_t__ fe_sec_tone_mode_t ;

/* Variables and functions */
 scalar_t__ SEC_TONE_ON ; 
 int FUNC0 (struct cx24110_state*,int) ; 
 int FUNC1 (struct cx24110_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend* fe, fe_sec_tone_mode_t tone)
{
	struct cx24110_state *state = fe->demodulator_priv;

	return FUNC1(state,0x76,(FUNC0(state,0x76)&~0x10)|(((tone==SEC_TONE_ON))?0x10:0));
}