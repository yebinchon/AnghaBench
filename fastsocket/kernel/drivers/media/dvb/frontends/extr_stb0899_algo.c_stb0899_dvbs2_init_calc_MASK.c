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
struct stb0899_internal {int srate; int srch_range; int step_size; int master_clk; scalar_t__ center_freq; } ;
struct stb0899_state {struct stb0899_internal internal; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACQ_CNTRL2 ; 
 int /*<<< orphan*/  FREQ_STEPSIZE ; 
 int /*<<< orphan*/  NUM_STEPS ; 
 int /*<<< orphan*/  STB0899_BASE_ACQ_CNTRL2 ; 
 int /*<<< orphan*/  STB0899_OFF0_ACQ_CNTRL2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ZIGZAG ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct stb0899_state*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	s32 steps, step_size;
	u32 range, reg;

	/* config uwp and csm */
	FUNC3(state);
	FUNC2(state);

	/* initialize BTR	*/
	FUNC6(state);
	FUNC4(state);

	if (internal->srate / 1000000 >= 15)
		step_size = (1 << 17) / 5;
	else if (internal->srate / 1000000 >= 10)
		step_size = (1 << 17) / 7;
	else if (internal->srate / 1000000 >= 5)
		step_size = (1 << 17) / 10;
	else
		step_size = (1 << 17) / 4;

	range = internal->srch_range / 1000000;
	steps = (10 * range * (1 << 17)) / (step_size * (internal->srate / 1000000));
	steps = (steps + 6) / 10;
	steps = (steps == 0) ? 1 : steps;
	if (steps % 2 == 0)
		FUNC5(state, internal->center_freq -
					   (internal->step_size * (internal->srate / 20000000)),
					   (internal->master_clk) / 1000000);
	else
		FUNC5(state, internal->center_freq, (internal->master_clk) / 1000000);

	/*Set Carrier Search params (zigzag, num steps and freq step size*/
	reg = FUNC0(STB0899_S2DEMOD, ACQ_CNTRL2);
	FUNC1(ZIGZAG, reg, 1);
	FUNC1(NUM_STEPS, reg, steps);
	FUNC1(FREQ_STEPSIZE, reg, step_size);
	FUNC7(state, STB0899_S2DEMOD, STB0899_BASE_ACQ_CNTRL2, STB0899_OFF0_ACQ_CNTRL2, reg);
}