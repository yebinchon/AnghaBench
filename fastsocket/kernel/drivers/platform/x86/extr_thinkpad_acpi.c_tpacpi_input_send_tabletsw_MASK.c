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
struct TYPE_2__ {scalar_t__ hotkey_tablet; } ;

/* Variables and functions */
 int /*<<< orphan*/  SW_TABLET_MODE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ tp_features ; 
 int /*<<< orphan*/  tpacpi_inputdev ; 
 int /*<<< orphan*/  tpacpi_inputdev_send_mutex ; 

__attribute__((used)) static void FUNC5(void)
{
	int state;

	if (tp_features.hotkey_tablet &&
	    !FUNC0(&state)) {
		FUNC3(&tpacpi_inputdev_send_mutex);

		FUNC1(tpacpi_inputdev,
				    SW_TABLET_MODE, !!state);
		FUNC2(tpacpi_inputdev);

		FUNC4(&tpacpi_inputdev_send_mutex);
	}
}