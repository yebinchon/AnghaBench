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
struct lgdt330x_state {int /*<<< orphan*/  current_frequency; } ;
struct dvb_frontend_parameters {int /*<<< orphan*/  frequency; } ;
struct dvb_frontend {struct lgdt330x_state* demodulator_priv; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(struct dvb_frontend* fe,
				 struct dvb_frontend_parameters* param)
{
	struct lgdt330x_state *state = fe->demodulator_priv;
	param->frequency = state->current_frequency;
	return 0;
}