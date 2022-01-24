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
struct i2c_client {int dummy; } ;
struct ch7006_state {int* regs; } ;

/* Variables and functions */
 size_t CH7006_BCLKOUT ; 
 size_t CH7006_BLACK_LEVEL ; 
 size_t CH7006_BWIDTH ; 
 size_t CH7006_CALC_SUBC_INC0 ; 
 size_t CH7006_CLKMODE ; 
 size_t CH7006_CONTRAST ; 
 size_t CH7006_DETECT ; 
 size_t CH7006_DISPMODE ; 
 size_t CH7006_FFILTER ; 
 size_t CH7006_HPOS ; 
 size_t CH7006_INPUT_FORMAT ; 
 size_t CH7006_INPUT_SYNC ; 
 size_t CH7006_PLLM ; 
 size_t CH7006_PLLN ; 
 size_t CH7006_PLLOV ; 
 size_t CH7006_PLL_CONTROL ; 
 size_t CH7006_POV ; 
 size_t CH7006_POWER ; 
 size_t CH7006_START_ACTIVE ; 
 size_t CH7006_SUBC_INC0 ; 
 size_t CH7006_SUBC_INC1 ; 
 size_t CH7006_SUBC_INC2 ; 
 size_t CH7006_SUBC_INC3 ; 
 size_t CH7006_SUBC_INC4 ; 
 size_t CH7006_SUBC_INC5 ; 
 size_t CH7006_SUBC_INC6 ; 
 size_t CH7006_SUBC_INC7 ; 
 size_t CH7006_VPOS ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct ch7006_state*,size_t) ; 

void FUNC1(struct i2c_client *client,
		       struct ch7006_state *state)
{
	FUNC0(client, state, CH7006_POWER);

	FUNC0(client, state, CH7006_DISPMODE);
	FUNC0(client, state, CH7006_FFILTER);
	FUNC0(client, state, CH7006_BWIDTH);
	FUNC0(client, state, CH7006_INPUT_FORMAT);
	FUNC0(client, state, CH7006_CLKMODE);
	FUNC0(client, state, CH7006_START_ACTIVE);
	FUNC0(client, state, CH7006_POV);
	FUNC0(client, state, CH7006_BLACK_LEVEL);
	FUNC0(client, state, CH7006_HPOS);
	FUNC0(client, state, CH7006_VPOS);
	FUNC0(client, state, CH7006_INPUT_SYNC);
	FUNC0(client, state, CH7006_DETECT);
	FUNC0(client, state, CH7006_CONTRAST);
	FUNC0(client, state, CH7006_PLLOV);
	FUNC0(client, state, CH7006_PLLM);
	FUNC0(client, state, CH7006_PLLN);
	FUNC0(client, state, CH7006_BCLKOUT);
	FUNC0(client, state, CH7006_SUBC_INC0);
	FUNC0(client, state, CH7006_SUBC_INC1);
	FUNC0(client, state, CH7006_SUBC_INC2);
	FUNC0(client, state, CH7006_SUBC_INC3);
	FUNC0(client, state, CH7006_SUBC_INC4);
	FUNC0(client, state, CH7006_SUBC_INC5);
	FUNC0(client, state, CH7006_SUBC_INC6);
	FUNC0(client, state, CH7006_SUBC_INC7);
	FUNC0(client, state, CH7006_PLL_CONTROL);
	FUNC0(client, state, CH7006_CALC_SUBC_INC0);

	state->regs[CH7006_FFILTER] = (state->regs[CH7006_FFILTER] & 0xf0) |
		(state->regs[CH7006_FFILTER] & 0x0c) >> 2 |
		(state->regs[CH7006_FFILTER] & 0x03) << 2;
}