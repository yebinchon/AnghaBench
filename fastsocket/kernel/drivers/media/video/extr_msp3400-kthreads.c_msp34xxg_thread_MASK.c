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
struct msp_state {scalar_t__ mode; int std; int acb; int watch_stereo; scalar_t__ force_btsc; scalar_t__ radio; scalar_t__ scan_in_progress; scalar_t__ restart; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSP_MODE_EXTERN ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 int FUNC3 (struct i2c_client*,int) ; 
 scalar_t__ FUNC4 (struct msp_state*,int) ; 
 int msp_standard ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,int,int) ; 
 scalar_t__ FUNC8 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct msp_state* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct i2c_client*) ; 

int FUNC13(void *data)
{
	struct i2c_client *client = data;
	struct msp_state *state = FUNC10(FUNC0(client));
	int val, i;

	FUNC11(1, msp_debug, client, "msp34xxg daemon started\n");
	FUNC9();
	for (;;) {
		FUNC11(2, msp_debug, client, "msp34xxg thread: sleep\n");
		FUNC4(state, -1);
		FUNC11(2, msp_debug, client, "msp34xxg thread: wakeup\n");

restart:
		FUNC11(1, msp_debug, client, "thread: restart scan\n");
		state->restart = 0;
		if (FUNC1())
			break;

		if (state->mode == MSP_MODE_EXTERN) {
			/* no carrier scan needed, just unmute */
			FUNC11(1, msp_debug, client,
				"thread: no carrier scan\n");
			state->scan_in_progress = 0;
			FUNC6(state);
			continue;
		}

		/* setup the chip*/
		FUNC2(client);
		state->std = state->radio ? 0x40 :
			(state->force_btsc && msp_standard == 1) ? 32 : msp_standard;
		FUNC7(client, 0x20, state->std);
		/* start autodetect */
		if (state->std != 1)
			goto unmute;

		/* watch autodetect */
		FUNC11(1, msp_debug, client,
			"started autodetect, waiting for result\n");
		for (i = 0; i < 10; i++) {
			if (FUNC4(state, 100))
				goto restart;

			/* check results */
			val = FUNC3(client, 0x7e);
			if (val < 0x07ff) {
				state->std = val;
				break;
			}
			FUNC11(2, msp_debug, client,
				"detection still in progress\n");
		}
		if (state->std == 1) {
			FUNC11(1, msp_debug, client,
				"detection still in progress after 10 tries. giving up.\n");
			continue;
		}

unmute:
		FUNC11(1, msp_debug, client,
			"detected standard: %s (0x%04x)\n",
			FUNC5(state->std), state->std);

		if (state->std == 9) {
			/* AM NICAM mode */
			FUNC8(client, 0x0e, 0x7c00);
		}

		/* unmute: dispatch sound to scart output, set scart volume */
		FUNC6(state);

		/* restore ACB */
		if (FUNC8(client, 0x13, state->acb))
			return -1;

		/* the periodic stereo/SAP check is only relevant for
		   the 0x20 standard (BTSC) */
		if (state->std != 0x20)
			continue;

		state->watch_stereo = 1;

		/* monitor tv audio mode, the first time don't wait
		   in order to get a quick stereo/SAP update */
		FUNC12(client);
		while (state->watch_stereo) {
			FUNC12(client);
			if (FUNC4(state, 5000))
				goto restart;
		}
	}
	FUNC11(1, msp_debug, client, "thread: exit\n");
	return 0;
}