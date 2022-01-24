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
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;
typedef  scalar_t__ fe_sec_mini_cmd_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SEC_MINI_A ; 
 scalar_t__ SEC_MINI_B ; 
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24123_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe,
	fe_sec_mini_cmd_t burst)
{
	struct cx24123_state *state = fe->demodulator_priv;
	int val, tone;

	FUNC3("\n");

	/* stop continuous tone if enabled */
	tone = FUNC0(state, 0x29);
	if (tone & 0x10)
		FUNC2(state, 0x29, tone & ~0x50);

	/* wait for diseqc queue ready */
	FUNC1(state);

	/* select tone mode */
	FUNC2(state, 0x2a, FUNC0(state, 0x2a) | 0x4);
	FUNC4(30);
	val = FUNC0(state, 0x29);
	if (burst == SEC_MINI_A)
		FUNC2(state, 0x29, ((val & 0x90) | 0x40 | 0x00));
	else if (burst == SEC_MINI_B)
		FUNC2(state, 0x29, ((val & 0x90) | 0x40 | 0x08));
	else
		return -EINVAL;

	FUNC1(state);
	FUNC2(state, 0x2a, FUNC0(state, 0x2a) & 0xfb);

	/* restart continuous tone if enabled */
	if (tone & 0x10)
		FUNC2(state, 0x29, tone & ~0x40);

	return 0;
}