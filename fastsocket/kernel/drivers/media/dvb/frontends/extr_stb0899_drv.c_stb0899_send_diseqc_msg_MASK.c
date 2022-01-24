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
typedef  size_t u8 ;
struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; size_t* msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISPRECHARGE ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  STB0899_DISCNTRL1 ; 
 int /*<<< orphan*/  STB0899_DISFIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct stb0899_state*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, struct dvb_diseqc_master_cmd *cmd)
{
	struct stb0899_state *state = fe->demodulator_priv;
	u8 reg, i;

	if (cmd->msg_len > 8)
		return -EINVAL;

	/* enable FIFO precharge	*/
	reg = FUNC2(state, STB0899_DISCNTRL1);
	FUNC0(DISPRECHARGE, reg, 1);
	FUNC4(state, STB0899_DISCNTRL1, reg);
	for (i = 0; i < cmd->msg_len; i++) {
		/* wait for FIFO empty	*/
		if (FUNC3(state, 10) < 0)
			return -ETIMEDOUT;

		FUNC4(state, STB0899_DISFIFO, cmd->msg[i]);
	}
	reg = FUNC2(state, STB0899_DISCNTRL1);
	FUNC0(DISPRECHARGE, reg, 0);
	FUNC4(state, STB0899_DISCNTRL1, reg);
	FUNC1(100);
	return 0;
}