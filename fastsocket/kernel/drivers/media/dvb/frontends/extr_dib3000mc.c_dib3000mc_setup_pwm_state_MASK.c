#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct dib3000mc_state {TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ use_pwm3; scalar_t__ pwm3_inversion; TYPE_1__* agc; } ;
struct TYPE_3__ {int setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib3000mc_state*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dib3000mc_state *state)
{
	u16 reg_51, reg_52 = state->cfg->agc->setup & 0xfefb;
    if (state->cfg->pwm3_inversion) {
		reg_51 =  (2 << 14) | (0 << 10) | (7 << 6) | (2 << 2) | (2 << 0);
		reg_52 |= (1 << 2);
	} else {
		reg_51 = (2 << 14) | (4 << 10) | (7 << 6) | (2 << 2) | (2 << 0);
		reg_52 |= (1 << 8);
	}
	FUNC0(state, 51, reg_51);
	FUNC0(state, 52, reg_52);

    if (state->cfg->use_pwm3)
		FUNC0(state, 245, (1 << 3) | (1 << 0));
	else
		FUNC0(state, 245, 0);

    FUNC0(state, 1040, 0x3);
	return 0;
}