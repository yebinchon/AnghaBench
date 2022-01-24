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
struct msp_state {int rxsubchans; int nicam_on; int mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
#define  MSP_MODE_AM_NICAM 131 
#define  MSP_MODE_FM_NICAM1 130 
#define  MSP_MODE_FM_NICAM2 129 
#define  MSP_MODE_FM_TERRA 128 
 int V4L2_TUNER_SUB_LANG1 ; 
 int V4L2_TUNER_SUB_LANG2 ; 
 int V4L2_TUNER_SUB_MONO ; 
 int V4L2_TUNER_SUB_STEREO ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 struct msp_state* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct msp_state *state = FUNC3(FUNC0(client));
	int val;
	int rxsubchans = state->rxsubchans;
	int newnicam = state->nicam_on;
	int update = 0;

	switch (state->mode) {
	case MSP_MODE_FM_TERRA:
		val = FUNC2(client, 0x18);
		if (val > 32767)
			val -= 65536;
		FUNC4(2, msp_debug, client,
			"stereo detect register: %d\n", val);
		if (val > 8192) {
			rxsubchans = V4L2_TUNER_SUB_STEREO;
		} else if (val < -4096) {
			rxsubchans = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
		} else {
			rxsubchans = V4L2_TUNER_SUB_MONO;
		}
		newnicam = 0;
		break;
	case MSP_MODE_FM_NICAM1:
	case MSP_MODE_FM_NICAM2:
	case MSP_MODE_AM_NICAM:
		val = FUNC1(client, 0x23);
		FUNC4(2, msp_debug, client, "nicam sync=%d, mode=%d\n",
			val & 1, (val & 0x1e) >> 1);

		if (val & 1) {
			/* nicam synced */
			switch ((val & 0x1e) >> 1)  {
			case 0:
			case 8:
				rxsubchans = V4L2_TUNER_SUB_STEREO;
				break;
			case 1:
			case 9:
				rxsubchans = V4L2_TUNER_SUB_MONO;
				break;
			case 2:
			case 10:
				rxsubchans = V4L2_TUNER_SUB_LANG1 | V4L2_TUNER_SUB_LANG2;
				break;
			default:
				rxsubchans = V4L2_TUNER_SUB_MONO;
				break;
			}
			newnicam = 1;
		} else {
			newnicam = 0;
			rxsubchans = V4L2_TUNER_SUB_MONO;
		}
		break;
	}
	if (rxsubchans != state->rxsubchans) {
		update = 1;
		FUNC4(1, msp_debug, client,
			"watch: rxsubchans %02x => %02x\n",
			state->rxsubchans, rxsubchans);
		state->rxsubchans = rxsubchans;
	}
	if (newnicam != state->nicam_on) {
		update = 1;
		FUNC4(1, msp_debug, client, "watch: nicam %d => %d\n",
			state->nicam_on, newnicam);
		state->nicam_on = newnicam;
	}
	return update;
}