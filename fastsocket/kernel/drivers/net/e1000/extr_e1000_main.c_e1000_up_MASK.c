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
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int /*<<< orphan*/  netdev; int /*<<< orphan*/  napi; int /*<<< orphan*/  flags; struct e1000_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ICS_LSC ; 
 int /*<<< orphan*/  ICS ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct e1000_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;

	/* hardware has been reset, we need to reload some things */
	FUNC1(adapter);

	FUNC0(__E1000_DOWN, &adapter->flags);

	FUNC4(&adapter->napi);

	FUNC2(adapter);

	FUNC5(adapter->netdev);

	/* fire a link change interrupt to start the watchdog */
	FUNC3(ICS, E1000_ICS_LSC);
	return 0;
}