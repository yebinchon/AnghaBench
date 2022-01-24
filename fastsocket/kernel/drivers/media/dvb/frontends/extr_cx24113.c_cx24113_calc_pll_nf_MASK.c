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
typedef  int u8 ;
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct cx24113_state {int frequency; scalar_t__ rev; int vcodiv; scalar_t__ Fwindow_enabled; TYPE_1__* config; } ;
typedef  int s64 ;
typedef  int s32 ;
struct TYPE_2__ {int xtal_khz; } ;

/* Variables and functions */
 scalar_t__ REV_CX24113 ; 
 int VCODIV2 ; 
 int VCODIV4 ; 
 int FUNC0 (struct cx24113_state*,int) ; 
 int FUNC1 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24113_state*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,long long,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct cx24113_state *state, u16 *n, s32 *f)
{
	s32 N;
	s64 F;
	u64 dividend;
	u8 R, r;
	u8 vcodiv;
	u8 factor;
	s32 freq_hz = state->frequency * 1000;

	if (state->config->xtal_khz < 20000)
		factor = 1;
	else
		factor = 2;

	if (state->rev == REV_CX24113) {
		if (state->frequency >= 1100000)
			vcodiv = VCODIV2;
		else
			vcodiv = VCODIV4;
	} else {
		if (state->frequency >= 1165000)
			vcodiv = VCODIV2;
		else
			vcodiv = VCODIV4;
	}
	state->vcodiv = vcodiv;

	FUNC4("calculating N/F for %dHz with vcodiv %d\n", freq_hz, vcodiv);
	R = 0;
	do {
		R = FUNC1(state, R + 1);

		/* calculate tuner PLL settings: */
		N =  (freq_hz / 100 * vcodiv) * R;
		N /= (state->config->xtal_khz) * factor * 2;
		N += 5;     /* For round up. */
		N /= 10;
		N -= 32;
	} while (N < 6 && R < 3);

	if (N < 6) {
		FUNC5("strange frequency: N < 6\n");
		return;
	}
	F = freq_hz;
	F *= (u64) (R * vcodiv * 262144);
	FUNC4("1 N: %d, F: %lld, R: %d\n", N, (long long)F, R);
	/* do_div needs an u64 as first argument */
	dividend = F;
	FUNC3(dividend, state->config->xtal_khz * 1000 * factor * 2);
	F = dividend;
	FUNC4("2 N: %d, F: %lld, R: %d\n", N, (long long)F, R);
	F -= (N + 32) * 262144;

	FUNC4("3 N: %d, F: %lld, R: %d\n", N, (long long)F, R);

	if (state->Fwindow_enabled) {
		if (F > (262144 / 2 - 1638))
			F = 262144 / 2 - 1638;
		if (F < (-262144 / 2 + 1638))
			F = -262144 / 2 + 1638;
		if ((F < 3277 && F > 0) || (F > -3277 && F < 0)) {
			F = 0;
			r = FUNC0(state, 0x10);
			FUNC2(state, 0x10, r | (1 << 6));
		}
	}
	FUNC4("4 N: %d, F: %lld, R: %d\n", N, (long long)F, R);

	*n = (u16) N;
	*f = (s32) F;
}