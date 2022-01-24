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
struct cx25840_state {scalar_t__ aud_input; int /*<<< orphan*/  audclk_freq; } ;

/* Variables and functions */
 scalar_t__ CX25840_AUDIO_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 scalar_t__ FUNC4 (struct cx25840_state*) ; 
 scalar_t__ FUNC5 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct cx25840_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 struct cx25840_state* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct i2c_client *client)
{
	struct cx25840_state *state = FUNC8(FUNC3(client));

	if (!FUNC6(state)) {
		/* assert soft reset */
		FUNC0(client, 0x810, ~0x1, 0x01);

		/* stop microcontroller */
		FUNC0(client, 0x803, ~0x10, 0);

		/* Mute everything to prevent the PFFT! */
		FUNC1(client, 0x8d3, 0x1f);

		if (state->aud_input == CX25840_AUDIO_SERIAL) {
			/* Set Path1 to Serial Audio Input */
			FUNC2(client, 0x8d0, 0x01011012);

			/* The microcontroller should not be started for the
			 * non-tuner inputs: autodetection is specific for
			 * TV audio. */
		} else {
			/* Set Path1 to Analog Demod Main Channel */
			FUNC2(client, 0x8d0, 0x1f063870);
		}
	}

	FUNC7(client, state->audclk_freq);

	if (!FUNC6(state)) {
		if (state->aud_input != CX25840_AUDIO_SERIAL) {
			/* When the microcontroller detects the
			 * audio format, it will unmute the lines */
			FUNC0(client, 0x803, ~0x10, 0x10);
		}

		/* deassert soft reset */
		FUNC0(client, 0x810, ~0x1, 0x00);

		/* Ensure the controller is running when we exit */
		if (FUNC5(state) || FUNC4(state))
			FUNC0(client, 0x803, ~0x10, 0x10);
	}
}