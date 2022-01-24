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
typedef  int /*<<< orphan*/  u32 ;
struct dvbt_get_status_msg {int /*<<< orphan*/  viterbi_error_rate; } ;
struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int /*<<< orphan*/  d; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 char CINERGYT2_EP1_GET_TUNER_STATUS ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u32 *ber)
{
	struct cinergyt2_fe_state *state = fe->demodulator_priv;
	struct dvbt_get_status_msg status;
	char cmd[] = { CINERGYT2_EP1_GET_TUNER_STATUS };
	int ret;

	ret = FUNC0(state->d, cmd, sizeof(cmd), (char *)&status,
				sizeof(status), 0);
	if (ret < 0)
		return ret;

	*ber = FUNC1(status.viterbi_error_rate);
	return 0;
}