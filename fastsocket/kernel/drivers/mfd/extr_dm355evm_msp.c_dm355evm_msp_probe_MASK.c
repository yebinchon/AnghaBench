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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DM355EVM_MSP_FIRMREV ; 
 int /*<<< orphan*/  DM355EVM_MSP_LED ; 
 int /*<<< orphan*/  DM355EVM_MSP_VIDEO_IN ; 
 int EBUSY ; 
 int MSP_VIDEO_IMAGER ; 
 int FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm355evm_power_off ; 
 struct i2c_client* msp430 ; 
 scalar_t__ FUNC6 () ; 
 int msp_led_cache ; 
 int /*<<< orphan*/  pm_power_off ; 

__attribute__((used)) static int
FUNC7(struct i2c_client *client, const struct i2c_device_id *id)
{
	int		status;
	const char	*video = FUNC6() ? "TVP5146" : "imager";

	if (msp430)
		return -EBUSY;
	msp430 = client;

	/* display revision status; doubles as sanity check */
	status = FUNC3(DM355EVM_MSP_FIRMREV);
	if (status < 0)
		goto fail;
	FUNC1(&client->dev, "firmware v.%02X, %s as video-in\n",
			status, video);

	/* mux video input:  either tvp5146 or some external imager */
	status = FUNC5(FUNC6() ? 0 : MSP_VIDEO_IMAGER,
			DM355EVM_MSP_VIDEO_IN);
	if (status < 0)
		FUNC2(&client->dev, "error %d muxing %s as video-in\n",
			status, video);

	/* init LED cache, and turn off the LEDs */
	msp_led_cache = 0xff;
	FUNC5(msp_led_cache, DM355EVM_MSP_LED);

	/* export capabilities we support */
	status = FUNC0(client);
	if (status < 0)
		goto fail;

	/* PM hookup */
	pm_power_off = dm355evm_power_off;

	return 0;

fail:
	/* FIXME remove children ... */
	FUNC4(client);
	return status;
}