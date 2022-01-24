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
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_config* config; struct stb0899_internal internal; } ;
struct stb0899_config {int ldpc_max_iter; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_ITER ; 
 int /*<<< orphan*/  MAX_ITERATIONS ; 
 int /*<<< orphan*/  STB0899_BASE_MAX_ITER ; 
 int /*<<< orphan*/  STB0899_OFF0_MAX_ITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	struct stb0899_config *config = state->config;

	s32 iter_scale;
	u32 reg;

	iter_scale = 17 * (internal->master_clk / 1000);
	iter_scale += 410000;
	iter_scale /= (internal->srate / 1000000);
	iter_scale /= 1000;

	if (iter_scale > config->ldpc_max_iter)
		iter_scale = config->ldpc_max_iter;

	reg = FUNC0(STB0899_S2DEMOD, MAX_ITER);
	FUNC1(MAX_ITERATIONS, reg, iter_scale);
	FUNC2(state, STB0899_S2DEMOD, STB0899_BASE_MAX_ITER, STB0899_OFF0_MAX_ITER, reg);
}