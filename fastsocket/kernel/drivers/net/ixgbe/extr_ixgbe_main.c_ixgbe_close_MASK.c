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
struct net_device {int dummy; } ;
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC7(netdev);

#ifdef CONFIG_IXGBE_PTP
	ixgbe_ptp_stop(adapter);
#endif

	FUNC0(adapter);
	FUNC4(adapter);

	FUNC1(adapter);

	FUNC3(adapter);
	FUNC2(adapter);

	FUNC6(adapter);

	return 0;
}