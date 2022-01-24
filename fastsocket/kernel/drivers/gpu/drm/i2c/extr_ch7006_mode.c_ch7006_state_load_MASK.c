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
struct ch7006_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH7006_BCLKOUT ; 
 int /*<<< orphan*/  CH7006_BLACK_LEVEL ; 
 int /*<<< orphan*/  CH7006_BWIDTH ; 
 int /*<<< orphan*/  CH7006_CALC_SUBC_INC0 ; 
 int /*<<< orphan*/  CH7006_CLKMODE ; 
 int /*<<< orphan*/  CH7006_CONTRAST ; 
 int /*<<< orphan*/  CH7006_DETECT ; 
 int /*<<< orphan*/  CH7006_DISPMODE ; 
 int /*<<< orphan*/  CH7006_FFILTER ; 
 int /*<<< orphan*/  CH7006_HPOS ; 
 int /*<<< orphan*/  CH7006_INPUT_FORMAT ; 
 int /*<<< orphan*/  CH7006_INPUT_SYNC ; 
 int /*<<< orphan*/  CH7006_PLLM ; 
 int /*<<< orphan*/  CH7006_PLLN ; 
 int /*<<< orphan*/  CH7006_PLLOV ; 
 int /*<<< orphan*/  CH7006_PLL_CONTROL ; 
 int /*<<< orphan*/  CH7006_POV ; 
 int /*<<< orphan*/  CH7006_POWER ; 
 int /*<<< orphan*/  CH7006_START_ACTIVE ; 
 int /*<<< orphan*/  CH7006_SUBC_INC0 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC1 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC2 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC3 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC4 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC5 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC6 ; 
 int /*<<< orphan*/  CH7006_SUBC_INC7 ; 
 int /*<<< orphan*/  CH7006_VPOS ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,struct ch7006_state*,int /*<<< orphan*/ ) ; 

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
}