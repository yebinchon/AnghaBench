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

/* Variables and functions */
 int /*<<< orphan*/  SW_RFKILL_ALL ; 
 int TPACPI_RFK_RADIO_OFF ; 
 int TPACPI_RFK_RADIO_ON ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tpacpi_inputdev ; 
 int /*<<< orphan*/  tpacpi_inputdev_send_mutex ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void)
{
	int wlsw;

	/*
	 * We must sync all rfkill controllers *before* issuing any
	 * rfkill input events, or we will race the rfkill core input
	 * handler.
	 *
	 * tpacpi_inputdev_send_mutex works as a syncronization point
	 * for the above.
	 *
	 * We optimize to avoid numerous calls to hotkey_get_wlsw.
	 */

	wlsw = FUNC0();

	/* Sync hw blocking state first if it is hw-blocked */
	if (wlsw == TPACPI_RFK_RADIO_OFF)
		FUNC6(true);

	/* Sync sw blocking state */
	FUNC7();

	/* Sync hw blocking state last if it is hw-unblocked */
	if (wlsw == TPACPI_RFK_RADIO_ON)
		FUNC6(false);

	/* Issue rfkill input event for WLSW switch */
	if (!(wlsw < 0)) {
		FUNC4(&tpacpi_inputdev_send_mutex);

		FUNC2(tpacpi_inputdev,
				    SW_RFKILL_ALL, (wlsw > 0));
		FUNC3(tpacpi_inputdev);

		FUNC5(&tpacpi_inputdev_send_mutex);
	}

	/*
	 * this can be unconditional, as we will poll state again
	 * if userspace uses the notify to read data
	 */
	FUNC1();
}