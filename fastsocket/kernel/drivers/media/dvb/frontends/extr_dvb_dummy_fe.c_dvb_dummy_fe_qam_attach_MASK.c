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
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct dvb_dummy_fe_state* demodulator_priv; int /*<<< orphan*/  ops; } ;
struct dvb_dummy_fe_state {struct dvb_frontend frontend; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dvb_dummy_fe_qam_ops ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_dummy_fe_state*) ; 
 struct dvb_dummy_fe_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

struct dvb_frontend *FUNC3(void)
{
	struct dvb_dummy_fe_state* state = NULL;

	/* allocate memory for the internal state */
	state = FUNC1(sizeof(struct dvb_dummy_fe_state), GFP_KERNEL);
	if (state == NULL) goto error;

	/* create dvb_frontend */
	FUNC2(&state->frontend.ops, &dvb_dummy_fe_qam_ops, sizeof(struct dvb_frontend_ops));
	state->frontend.demodulator_priv = state;
	return &state->frontend;

error:
	FUNC0(state);
	return NULL;
}