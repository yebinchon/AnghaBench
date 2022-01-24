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
struct ixgbe_adapter {scalar_t__ link_up; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_adapter *adapter)
{
	/* if interface is down do nothing */
	if (FUNC6(__IXGBE_DOWN, &adapter->state) ||
	    FUNC6(__IXGBE_RESETTING, &adapter->state))
		return;

	FUNC5(adapter);

	if (adapter->link_up)
		FUNC4(adapter);
	else
		FUNC3(adapter);

	FUNC0(adapter);
	FUNC1(adapter);

	FUNC2(adapter);
}