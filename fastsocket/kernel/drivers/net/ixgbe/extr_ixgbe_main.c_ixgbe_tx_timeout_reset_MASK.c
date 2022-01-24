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
struct ixgbe_adapter {int /*<<< orphan*/  flags2; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG2_RESET_REQUESTED ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter)
{

	/* Do the reset outside of interrupt context */
	if (!FUNC2(__IXGBE_DOWN, &adapter->state)) {
		adapter->flags2 |= IXGBE_FLAG2_RESET_REQUESTED;
		FUNC0(drv, "initiating reset due to tx timeout\n");
		FUNC1(adapter);
	}
}