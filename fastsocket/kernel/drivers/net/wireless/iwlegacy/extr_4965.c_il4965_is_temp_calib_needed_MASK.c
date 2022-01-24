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
struct il_priv {int temperature; int last_temperature; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int IL_TEMPERATURE_THRESHOLD ; 
 int /*<<< orphan*/  S_STATS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct il_priv *il)
{
	int temp_diff;

	if (!FUNC2(S_STATS, &il->status)) {
		FUNC1("Temperature not updated -- no stats.\n");
		return 0;
	}

	temp_diff = il->temperature - il->last_temperature;

	/* get absolute value */
	if (temp_diff < 0) {
		FUNC0("Getting cooler, delta %d\n", temp_diff);
		temp_diff = -temp_diff;
	} else if (temp_diff == 0)
		FUNC0("Temperature unchanged\n");
	else
		FUNC0("Getting warmer, delta %d\n", temp_diff);

	if (temp_diff < IL_TEMPERATURE_THRESHOLD) {
		FUNC0(" => thermal txpower calib not needed\n");
		return 0;
	}

	FUNC0(" => thermal txpower calib needed\n");

	return 1;
}