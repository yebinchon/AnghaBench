#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct ixgbe_adapter {scalar_t__ num_vfs; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SSVPC ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 

__attribute__((used)) static void FUNC2(struct ixgbe_adapter *adapter)
{
	u32 ssvpc;

	/* Do not perform spoof check for 82598 or if not in IOV mode */
	if (adapter->hw.mac.type == ixgbe_mac_82598EB ||
	    adapter->num_vfs == 0)
		return;

	ssvpc = FUNC0(&adapter->hw, IXGBE_SSVPC);

	/*
	 * ssvpc register is cleared on read, if zero then no
	 * spoofed packets in the last interval.
	 */
	if (!ssvpc)
		return;

	FUNC1(drv, "%d Spoofed packets detected\n", ssvpc);
}