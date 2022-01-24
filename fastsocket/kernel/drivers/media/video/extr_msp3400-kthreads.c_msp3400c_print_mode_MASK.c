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
struct msp_state {int main; int second; scalar_t__ mode; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ MSP_MODE_AM_NICAM ; 
 scalar_t__ MSP_MODE_FM_NICAM1 ; 
 scalar_t__ MSP_MODE_FM_NICAM2 ; 
 scalar_t__ MSP_MODE_FM_TERRA ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  msp_debug ; 
 struct msp_state* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *client)
{
	struct msp_state *state = FUNC1(FUNC0(client));

	if (state->main == state->second)
		FUNC2(1, msp_debug, client,
			"mono sound carrier: %d.%03d MHz\n",
			state->main / 910000, (state->main / 910) % 1000);
	else
		FUNC2(1, msp_debug, client,
			"main sound carrier: %d.%03d MHz\n",
			state->main / 910000, (state->main / 910) % 1000);
	if (state->mode == MSP_MODE_FM_NICAM1 || state->mode == MSP_MODE_FM_NICAM2)
		FUNC2(1, msp_debug, client,
			"NICAM/FM carrier  : %d.%03d MHz\n",
			state->second / 910000, (state->second/910) % 1000);
	if (state->mode == MSP_MODE_AM_NICAM)
		FUNC2(1, msp_debug, client,
			"NICAM/AM carrier  : %d.%03d MHz\n",
			state->second / 910000, (state->second / 910) % 1000);
	if (state->mode == MSP_MODE_FM_TERRA && state->main != state->second) {
		FUNC2(1, msp_debug, client,
			"FM-stereo carrier : %d.%03d MHz\n",
			state->second / 910000, (state->second / 910) % 1000);
	}
}