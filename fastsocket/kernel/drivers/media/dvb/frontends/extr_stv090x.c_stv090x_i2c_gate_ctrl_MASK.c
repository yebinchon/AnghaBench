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
struct stv090x_state {TYPE_1__* internal; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  I2CRPT ; 
 int /*<<< orphan*/  I2CT_ON_FIELD ; 
 int /*<<< orphan*/  FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct stv090x_state *state, int enable)
{
	u32 reg;

	/*
	 * NOTE! A lock is used as a FSM to control the state in which
	 * access is serialized between two tuners on the same demod.
	 * This has nothing to do with a lock to protect a critical section
	 * which may in some other cases be confused with protecting I/O
	 * access to the demodulator gate.
	 * In case of any error, the lock is unlocked and exit within the
	 * relevant operations themselves.
	 */
	if (enable)
		FUNC4(&state->internal->tuner_lock);

	reg = FUNC0(state, I2CRPT);
	if (enable) {
		FUNC3(FE_DEBUG, 1, "Enable Gate");
		FUNC1(reg, I2CT_ON_FIELD, 1);
		if (FUNC2(state, I2CRPT, reg) < 0)
			goto err;

	} else {
		FUNC3(FE_DEBUG, 1, "Disable Gate");
		FUNC1(reg, I2CT_ON_FIELD, 0);
		if ((FUNC2(state, I2CRPT, reg)) < 0)
			goto err;
	}

	if (!enable)
		FUNC5(&state->internal->tuner_lock);

	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	FUNC5(&state->internal->tuner_lock);
	return -1;
}