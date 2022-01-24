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
struct stv090x_state {int search_range; TYPE_1__* internal; } ;
typedef  int s32 ;
struct TYPE_2__ {int mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGC2I0 ; 
 int /*<<< orphan*/  AGC2I1 ; 
 int /*<<< orphan*/  CFR1 ; 
 int /*<<< orphan*/  CFR2 ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC3(struct stv090x_state *state)
{
	s32 offst_car, agc2, car_max;
	int no_signal;

	offst_car  = FUNC0(state, CFR2) << 8;
	offst_car |= FUNC0(state, CFR1);
	offst_car = FUNC1(offst_car, 16);

	agc2  = FUNC0(state, AGC2I1) << 8;
	agc2 |= FUNC0(state, AGC2I0);
	car_max = state->search_range / 1000;

	car_max += (car_max / 10); /* 10% margin */
	car_max  = (65536 * car_max / 2);
	car_max /= state->internal->mclk / 1000;

	if (car_max > 0x4000)
		car_max = 0x4000;

	if ((agc2 > 0x2000) || (offst_car > 2 * car_max) || (offst_car < -2 * car_max)) {
		no_signal = 1;
		FUNC2(FE_DEBUG, 1, "No Signal");
	} else {
		no_signal = 0;
		FUNC2(FE_DEBUG, 1, "Found Signal");
	}

	return no_signal;
}