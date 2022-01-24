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
struct l64781_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l64781_state*,int,int) ; 

__attribute__((used)) static void FUNC1 (struct l64781_state* state)
{
	/* Set AFC stall for the AFC_INIT_FRQ setting, TIM_STALL for
	   timing offset */
	FUNC0 (state, 0x07, 0x9e); /* stall AFC */
	FUNC0 (state, 0x08, 0);    /* AFC INIT FREQ */
	FUNC0 (state, 0x09, 0);
	FUNC0 (state, 0x0a, 0);
	FUNC0 (state, 0x07, 0x8e);
	FUNC0 (state, 0x0e, 0);    /* AGC gain to zero in beginning */
	FUNC0 (state, 0x11, 0x80); /* stall TIM */
	FUNC0 (state, 0x10, 0);    /* TIM_OFFSET_LSB */
	FUNC0 (state, 0x12, 0);
	FUNC0 (state, 0x13, 0);
	FUNC0 (state, 0x11, 0x00);
}