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
struct s5h1420_state {int /*<<< orphan*/  tuner_i2c_adapter; } ;
struct dvb_frontend {struct s5h1420_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct s5h1420_state*) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend* fe)
{
	struct s5h1420_state* state = fe->demodulator_priv;
	FUNC0(&state->tuner_i2c_adapter);
	FUNC1(state);
}