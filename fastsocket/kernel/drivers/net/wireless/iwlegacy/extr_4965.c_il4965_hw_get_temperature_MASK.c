#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_7__ {int /*<<< orphan*/  temperature; } ;
struct TYPE_8__ {TYPE_2__ common; } ;
struct TYPE_9__ {int flag; TYPE_3__ general; } ;
struct TYPE_10__ {TYPE_4__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/ * therm_r4; int /*<<< orphan*/ * therm_r3; int /*<<< orphan*/ * therm_r2; int /*<<< orphan*/ * therm_r1; } ;
struct il_priv {TYPE_5__ _4965; int /*<<< orphan*/  status; TYPE_1__ card_alive_init; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int STATS_REPLY_FLG_HT40_MODE_MSK ; 
 int /*<<< orphan*/  S_TEMPERATURE ; 
 scalar_t__ TEMPERATURE_CALIB_A_VAL ; 
 scalar_t__ TEMPERATURE_CALIB_KELVIN_OFFSET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct il_priv *il)
{
	s32 temperature;
	s32 vt;
	s32 R1, R2, R3;
	u32 R4;

	if (FUNC5(S_TEMPERATURE, &il->status) &&
	    (il->_4965.stats.flag & STATS_REPLY_FLG_HT40_MODE_MSK)) {
		FUNC0("Running HT40 temperature calibration\n");
		R1 = (s32) FUNC3(il->card_alive_init.therm_r1[1]);
		R2 = (s32) FUNC3(il->card_alive_init.therm_r2[1]);
		R3 = (s32) FUNC3(il->card_alive_init.therm_r3[1]);
		R4 = FUNC3(il->card_alive_init.therm_r4[1]);
	} else {
		FUNC0("Running temperature calibration\n");
		R1 = (s32) FUNC3(il->card_alive_init.therm_r1[0]);
		R2 = (s32) FUNC3(il->card_alive_init.therm_r2[0]);
		R3 = (s32) FUNC3(il->card_alive_init.therm_r3[0]);
		R4 = FUNC3(il->card_alive_init.therm_r4[0]);
	}

	/*
	 * Temperature is only 23 bits, so sign extend out to 32.
	 *
	 * NOTE If we haven't received a stats notification yet
	 * with an updated temperature, use R4 provided to us in the
	 * "initialize" ALIVE response.
	 */
	if (!FUNC5(S_TEMPERATURE, &il->status))
		vt = FUNC4(R4, 23);
	else
		vt = FUNC4(FUNC3
				   (il->_4965.stats.general.common.temperature),
				   23);

	FUNC0("Calib values R[1-3]: %d %d %d R4: %d\n", R1, R2, R3, vt);

	if (R3 == R1) {
		FUNC1("Calibration conflict R1 == R3\n");
		return -1;
	}

	/* Calculate temperature in degrees Kelvin, adjust by 97%.
	 * Add offset to center the adjustment around 0 degrees Centigrade. */
	temperature = TEMPERATURE_CALIB_A_VAL * (vt - R2);
	temperature /= (R3 - R1);
	temperature =
	    (temperature * 97) / 100 + TEMPERATURE_CALIB_KELVIN_OFFSET;

	FUNC0("Calibrated temperature: %dK, %dC\n", temperature,
	       FUNC2(temperature));

	return temperature;
}