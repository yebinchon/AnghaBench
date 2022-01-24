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
struct il_priv {scalar_t__ temperature; int /*<<< orphan*/  txpower_work; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  status; int /*<<< orphan*/  disable_tx_power_cal; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  S_SCANNING ; 
 int /*<<< orphan*/  S_TEMPERATURE ; 
 scalar_t__ FUNC3 (struct il_priv*) ; 
 scalar_t__ FUNC4 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

void
FUNC9(struct il_priv *il)
{
	s32 temp;

	temp = FUNC3(il);
	if (FUNC1(temp))
		return;

	if (il->temperature != temp) {
		if (il->temperature)
			FUNC0("Temperature changed " "from %dC to %dC\n",
			       FUNC2(il->temperature),
			       FUNC2(temp));
		else
			FUNC0("Temperature " "initialized to %dC\n",
			       FUNC2(temp));
	}

	il->temperature = temp;
	FUNC6(S_TEMPERATURE, &il->status);

	if (!il->disable_tx_power_cal &&
	    FUNC8(!FUNC7(S_SCANNING, &il->status)) &&
	    FUNC4(il))
		FUNC5(il->workqueue, &il->txpower_work);
}