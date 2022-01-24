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
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {int demod; TYPE_1__* internal; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  STOP_CLKVIT1_FIELD ; 
 int /*<<< orphan*/  STOP_CLKVIT2_FIELD ; 
#define  STV090x_DEMODULATOR_0 129 
#define  STV090x_DEMODULATOR_1 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV090x_STOPCLK2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct stv090x_state *state, int enable)
{
	u32 reg;

	switch (state->demod) {
	case STV090x_DEMODULATOR_0:
		FUNC2(&state->internal->demod_lock);
		reg = FUNC4(state, STV090x_STOPCLK2);
		FUNC0(reg, STOP_CLKVIT1_FIELD, enable);
		if (FUNC5(state, STV090x_STOPCLK2, reg) < 0)
			goto err;
		FUNC3(&state->internal->demod_lock);
		break;

	case STV090x_DEMODULATOR_1:
		FUNC2(&state->internal->demod_lock);
		reg = FUNC4(state, STV090x_STOPCLK2);
		FUNC0(reg, STOP_CLKVIT2_FIELD, enable);
		if (FUNC5(state, STV090x_STOPCLK2, reg) < 0)
			goto err;
		FUNC3(&state->internal->demod_lock);
		break;

	default:
		FUNC1(FE_ERROR, 1, "Wrong demodulator!");
		break;
	}
	return 0;
err:
	FUNC3(&state->internal->demod_lock);
	FUNC1(FE_ERROR, 1, "I/O error");
	return -1;
}