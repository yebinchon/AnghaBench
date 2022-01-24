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
struct msp_state {scalar_t__ mode; int scan_in_progress; int v4l2_std; int watch_stereo; int nicam_on; int std; int i2s_mode; scalar_t__ has_i2s_conf; scalar_t__ has_nicam; int /*<<< orphan*/  rxsubchans; scalar_t__ radio; int /*<<< orphan*/  second; int /*<<< orphan*/  main; scalar_t__ restart; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {char* name; int retval; int /*<<< orphan*/  second; int /*<<< orphan*/  main; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 scalar_t__ MSP_MODE_AM_NICAM ; 
 scalar_t__ MSP_MODE_BTSC ; 
 scalar_t__ MSP_MODE_EXTERN ; 
 scalar_t__ MSP_MODE_FM_NICAM1 ; 
 scalar_t__ MSP_MODE_FM_NICAM2 ; 
 scalar_t__ MSP_MODE_FM_RADIO ; 
 scalar_t__ MSP_MODE_FM_TERRA ; 
 int V4L2_STD_NTSC ; 
 int V4L2_STD_SECAM ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,scalar_t__) ; 
 scalar_t__ msp_amsound ; 
 scalar_t__ msp_debug ; 
 int FUNC6 (struct i2c_client*,int) ; 
 scalar_t__ FUNC7 (struct msp_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 TYPE_1__* msp_stdlist ; 
 int /*<<< orphan*/  FUNC9 (struct msp_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 struct msp_state* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__,struct i2c_client*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct i2c_client*) ; 

int FUNC16(void *data)
{
	struct i2c_client *client = data;
	struct msp_state *state = FUNC13(FUNC1(client));
	int val, i, std, count;

	FUNC14(1, msp_debug, client, "msp3410 daemon started\n");
	FUNC12();
	for (;;) {
		FUNC14(2, msp_debug, client, "msp3410 thread: sleep\n");
		FUNC7(state, -1);
		FUNC14(2, msp_debug, client, "msp3410 thread: wakeup\n");

restart:
		FUNC14(2, msp_debug, client, "thread: restart scan\n");
		state->restart = 0;
		if (FUNC2())
			break;

		if (state->mode == MSP_MODE_EXTERN) {
			/* no carrier scan needed, just unmute */
			FUNC14(1, msp_debug, client,
				"thread: no carrier scan\n");
			state->scan_in_progress = 0;
			FUNC9(state);
			continue;
		}

		/* mute audio */
		state->scan_in_progress = 1;
		FUNC9(state);

		/* start autodetect. Note: autodetect is not supported for
		   NTSC-M and radio, hence we force the standard in those
		   cases. */
		if (state->radio)
			std = 0x40;
		else
			std = (state->v4l2_std & V4L2_STD_NTSC) ? 0x20 : 1;
		state->watch_stereo = 0;
		state->nicam_on = 0;

		/* wait for tuner to settle down after a channel change */
		if (FUNC7(state, 200))
			goto restart;

		if (msp_debug)
			FUNC14(2, msp_debug, client,
				"setting standard: %s (0x%04x)\n",
				FUNC8(std), std);

		if (std != 1) {
			/* programmed some specific mode */
			val = std;
		} else {
			/* triggered autodetect */
			FUNC10(client, 0x20, std);
			for (;;) {
				if (FUNC7(state, 100))
					goto restart;

				/* check results */
				val = FUNC6(client, 0x7e);
				if (val < 0x07ff)
					break;
				FUNC14(2, msp_debug, client,
					"detection still in progress\n");
			}
		}
		for (i = 0; msp_stdlist[i].name != NULL; i++)
			if (msp_stdlist[i].retval == val)
				break;
		FUNC14(1, msp_debug, client, "current standard: %s (0x%04x)\n",
			FUNC8(val), val);
		state->main   = msp_stdlist[i].main;
		state->second = msp_stdlist[i].second;
		state->std = val;
		state->rxsubchans = V4L2_TUNER_SUB_MONO;

		if (msp_amsound && !state->radio &&
		    (state->v4l2_std & V4L2_STD_SECAM) && (val != 0x0009)) {
			/* autodetection has failed, let backup */
			FUNC14(1, msp_debug, client, "autodetection failed,"
				" switching to backup standard: %s (0x%04x)\n",
				msp_stdlist[8].name ?
					msp_stdlist[8].name : "unknown", val);
			state->std = val = 0x0009;
			FUNC10(client, 0x20, val);
		}

		/* set stereo */
		switch (val) {
		case 0x0008: /* B/G NICAM */
		case 0x000a: /* I NICAM */
		case 0x000b: /* D/K NICAM */
			if (val == 0x000a)
				state->mode = MSP_MODE_FM_NICAM2;
			else
				state->mode = MSP_MODE_FM_NICAM1;
			/* just turn on stereo */
			state->nicam_on = 1;
			state->watch_stereo = 1;
			break;
		case 0x0009:
			state->mode = MSP_MODE_AM_NICAM;
			state->nicam_on = 1;
			state->watch_stereo = 1;
			break;
		case 0x0020: /* BTSC */
			/* The pre-'G' models only have BTSC-mono */
			state->mode = MSP_MODE_BTSC;
			break;
		case 0x0040: /* FM radio */
			state->mode = MSP_MODE_FM_RADIO;
			state->rxsubchans = V4L2_TUNER_SUB_STEREO;
			/* not needed in theory if we have radio, but
			   short programming enables carrier mute */
			FUNC5(client, MSP_MODE_FM_RADIO);
			FUNC4(client, FUNC0(10.7),
					    FUNC0(10.7));
			break;
		case 0x0002:
		case 0x0003:
		case 0x0004:
		case 0x0005:
			state->mode = MSP_MODE_FM_TERRA;
			state->watch_stereo = 1;
			break;
		}

		/* set various prescales */
		FUNC11(client, 0x0d, 0x1900); /* scart */
		FUNC11(client, 0x0e, 0x3000); /* FM */
		if (state->has_nicam)
			FUNC11(client, 0x10, 0x5a00); /* nicam */

		if (state->has_i2s_conf)
			FUNC10(client, 0x40, state->i2s_mode);

		/* unmute */
		FUNC3(client);
		state->scan_in_progress = 0;
		FUNC9(state);

		/* monitor tv audio mode, the first time don't wait
		   so long to get a quick stereo/bilingual result */
		count = 3;
		while (state->watch_stereo) {
			if (FUNC7(state, count ? 1000 : 5000))
				goto restart;
			if (count)
				count--;
			FUNC15(client);
		}
	}
	FUNC14(1, msp_debug, client, "thread: exit\n");
	return 0;
}