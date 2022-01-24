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
typedef  int u32 ;
struct stv090x_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct dvb_diseqc_master_cmd {int msg_len; int* msg; } ;
struct TYPE_2__ {scalar_t__ diseqc_envelope_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQC_RESET_FIELD ; 
 int /*<<< orphan*/  DISTXCTL ; 
 int /*<<< orphan*/  DISTXDATA ; 
 int /*<<< orphan*/  DISTXSTATUS ; 
 int /*<<< orphan*/  DISTX_MODE_FIELD ; 
 int /*<<< orphan*/  DIS_PRECHARGE_FIELD ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  FIFO_FULL_FIELD ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct stv090x_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TX_IDLE_FIELD ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe, struct dvb_diseqc_master_cmd *cmd)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u32 reg, idle = 0, fifo_full = 1;
	int i;

	reg = FUNC1(state, DISTXCTL);

	FUNC2(reg, DISTX_MODE_FIELD,
		(state->config->diseqc_envelope_mode) ? 4 : 2);
	FUNC2(reg, DISEQC_RESET_FIELD, 1);
	if (FUNC3(state, DISTXCTL, reg) < 0)
		goto err;
	FUNC2(reg, DISEQC_RESET_FIELD, 0);
	if (FUNC3(state, DISTXCTL, reg) < 0)
		goto err;

	FUNC2(reg, DIS_PRECHARGE_FIELD, 1);
	if (FUNC3(state, DISTXCTL, reg) < 0)
		goto err;

	for (i = 0; i < cmd->msg_len; i++) {

		while (fifo_full) {
			reg = FUNC1(state, DISTXSTATUS);
			fifo_full = FUNC0(reg, FIFO_FULL_FIELD);
		}

		if (FUNC3(state, DISTXDATA, cmd->msg[i]) < 0)
			goto err;
	}
	reg = FUNC1(state, DISTXCTL);
	FUNC2(reg, DIS_PRECHARGE_FIELD, 0);
	if (FUNC3(state, DISTXCTL, reg) < 0)
		goto err;

	i = 0;

	while ((!idle) && (i < 10)) {
		reg = FUNC1(state, DISTXSTATUS);
		idle = FUNC0(reg, TX_IDLE_FIELD);
		FUNC5(10);
		i++;
	}

	return 0;
err:
	FUNC4(FE_ERROR, 1, "I/O error");
	return -1;
}