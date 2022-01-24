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
typedef  int /*<<< orphan*/  u8 ;
struct stb0899_internal {scalar_t__ status; long sub_range; long mclk; short derot_freq; int direction; int derot_step; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; TYPE_1__* config; struct stb0899_internal internal; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;
struct TYPE_2__ {short inversion; } ;

/* Variables and functions */
 scalar_t__ CARRIEROK ; 
 int /*<<< orphan*/  CFD_ON ; 
 int /*<<< orphan*/  CFRL ; 
 int /*<<< orphan*/  CFRM ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int FUNC0 (short) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (short) ; 
 scalar_t__ NOCARRIER ; 
 int /*<<< orphan*/  STB0899_CFD ; 
 int /*<<< orphan*/  STB0899_CFRM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 short FUNC4 (short) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,...) ; 
 scalar_t__ FUNC6 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static enum stb0899_status FUNC11(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;

	short int derot_freq = 0, last_derot_freq = 0, derot_limit, next_loop = 3;
	int index = 0;
	u8 cfr[2];
	u8 reg;

	internal->status = NOCARRIER;
	derot_limit = (internal->sub_range / 2L) / internal->mclk;
	derot_freq = internal->derot_freq;

	reg = FUNC7(state, STB0899_CFD);
	FUNC3(CFD_ON, reg, 1);
	FUNC9(state, STB0899_CFD, reg);

	do {
		FUNC5(state->verbose, FE_DEBUG, 1, "Derot Freq=%d, mclk=%d", derot_freq, internal->mclk);
		if (FUNC6(state) == NOCARRIER) {
			index++;
			last_derot_freq = derot_freq;
			derot_freq += index * internal->direction * internal->derot_step; /* next zig zag derotator position */

			if(FUNC4(derot_freq) > derot_limit)
				next_loop--;

			if (next_loop) {
				reg = FUNC7(state, STB0899_CFD);
				FUNC3(CFD_ON, reg, 1);
				FUNC9(state, STB0899_CFD, reg);

				FUNC3(CFRM, cfr[0], FUNC2(state->config->inversion * derot_freq));
				FUNC3(CFRL, cfr[1], FUNC0(state->config->inversion * derot_freq));
				FUNC10(state, STB0899_CFRM, cfr, 2); /* derotator frequency	*/
			}
		}

		internal->direction = -internal->direction; /* Change zigzag direction */
	} while ((internal->status != CARRIEROK) && next_loop);

	if (internal->status == CARRIEROK) {
		FUNC8(state, STB0899_CFRM, cfr, 2); /* get derotator frequency */
		internal->derot_freq = state->config->inversion * FUNC1(cfr[0], cfr[1]);
		FUNC5(state->verbose, FE_DEBUG, 1, "----> CARRIER OK !, Derot Freq=%d", internal->derot_freq);
	} else {
		internal->derot_freq = last_derot_freq;
	}

	return internal->status;
}