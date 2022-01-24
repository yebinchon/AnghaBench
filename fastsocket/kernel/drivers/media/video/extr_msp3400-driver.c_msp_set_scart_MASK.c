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
struct msp_state {int in_scart; int acb; int /*<<< orphan*/  i2s_mode; scalar_t__ has_i2s_conf; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/ * scart_names ; 
 int** scarts ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(struct i2c_client *client, int in, int out)
{
	struct msp_state *state = FUNC3(FUNC0(client));

	state->in_scart = in;

	if (in >= 0 && in <= 7 && out >= 0 && out <= 2) {
		if (-1 == scarts[out][in + 1])
			return;

		state->acb &= ~scarts[out][0];
		state->acb |=  scarts[out][in + 1];
	} else
		state->acb = 0xf60; /* Mute Input and SCART 1 Output */

	FUNC4(1, msp_debug, client, "scart switch: %s => %d (ACB=0x%04x)\n",
					scart_names[in], out, state->acb);
	FUNC2(client, 0x13, state->acb);

	/* Sets I2S speed 0 = 1.024 Mbps, 1 = 2.048 Mbps */
	if (state->has_i2s_conf)
		FUNC1(client, 0x40, state->i2s_mode);
}