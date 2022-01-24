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
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct cx24123_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24123_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24123_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
	struct dvb_diseqc_master_cmd *cmd)
{
	struct cx24123_state *state = fe->demodulator_priv;
	int i, val, tone;

	FUNC3("\n");

	/* stop continuous tone if enabled */
	tone = FUNC0(state, 0x29);
	if (tone & 0x10)
		FUNC2(state, 0x29, tone & ~0x50);

	/* wait for diseqc queue ready */
	FUNC1(state);

	/* select tone mode */
	FUNC2(state, 0x2a, FUNC0(state, 0x2a) & 0xfb);

	for (i = 0; i < cmd->msg_len; i++)
		FUNC2(state, 0x2C + i, cmd->msg[i]);

	val = FUNC0(state, 0x29);
	FUNC2(state, 0x29, ((val & 0x90) | 0x40) |
		((cmd->msg_len-3) & 3));

	/* wait for diseqc message to finish sending */
	FUNC1(state);

	/* restart continuous tone if enabled */
	if (tone & 0x10)
		FUNC2(state, 0x29, tone & ~0x40);

	return 0;
}