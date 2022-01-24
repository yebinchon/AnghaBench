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
struct igb_adapter {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __IGB_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct igb_adapter *adapter)
{
	FUNC0(FUNC4());
	while (FUNC6(__IGB_RESETTING, &adapter->state))
		FUNC5(1);
	FUNC2(adapter);
	FUNC3(adapter);
	FUNC1(__IGB_RESETTING, &adapter->state);
}