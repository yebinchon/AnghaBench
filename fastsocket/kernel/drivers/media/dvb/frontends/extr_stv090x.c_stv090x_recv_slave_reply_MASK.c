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
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct dvb_diseqc_slave_reply {int msg_len; void** msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISRXDATA ; 
 int /*<<< orphan*/  DISRX_ST0 ; 
 int /*<<< orphan*/  FIFO_BYTENBR_FIELD ; 
 int /*<<< orphan*/  RX_END_FIELD ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, struct dvb_diseqc_slave_reply *reply)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg = 0, i = 0, rx_end = 0;

	while ((rx_end != 1) && (i < 10)) {
		FUNC2(10);
		i++;
		reg = FUNC1(state, DISRX_ST0);
		rx_end = FUNC0(reg, RX_END_FIELD);
	}

	if (rx_end) {
		reply->msg_len = FUNC0(reg, FIFO_BYTENBR_FIELD);
		for (i = 0; i < reply->msg_len; i++)
			reply->msg[i] = FUNC1(state, DISRXDATA);
	}

	return 0;
}