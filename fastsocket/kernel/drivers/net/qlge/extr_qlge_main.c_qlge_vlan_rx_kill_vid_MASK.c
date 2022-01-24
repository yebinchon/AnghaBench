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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ql_adapter {int /*<<< orphan*/  ndev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAC_ADDR_TYPE_VLAN ; 
 int /*<<< orphan*/  SEM_MAC_ADDR_MASK ; 
 int /*<<< orphan*/  ifup ; 
 struct ql_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ql_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *ndev, u16 vid)
{
	struct ql_adapter *qdev = FUNC0(ndev);
	u32 enable_bit = 0;
	int status;

	status = FUNC2(qdev, SEM_MAC_ADDR_MASK);
	if (status)
		return;

	if (FUNC4
	    (qdev, (u8 *) &enable_bit, MAC_ADDR_TYPE_VLAN, vid)) {
		FUNC1(qdev, ifup, qdev->ndev,
			  "Failed to clear vlan address.\n");
	}
	FUNC3(qdev, SEM_MAC_ADDR_MASK);

}