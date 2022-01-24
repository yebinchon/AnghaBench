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
typedef  unsigned long u32 ;
typedef  int u16 ;
struct netxen_adapter {int physical_port; scalar_t__ mc_enabled; int /*<<< orphan*/ * mac_addr; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NETXEN_MAC_ADDR_CNTL_REG ; 
 scalar_t__ FUNC2 (int,int) ; 
 unsigned long FUNC3 (struct netxen_adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*,scalar_t__,unsigned long) ; 

__attribute__((used)) static int
FUNC5(struct netxen_adapter *adapter)
{
	u32	val = 0;
	u16 port = adapter->physical_port;
	u8 *addr = adapter->mac_addr;

	if (!adapter->mc_enabled)
		return 0;

	val = FUNC3(adapter, NETXEN_MAC_ADDR_CNTL_REG);
	val &= ~(1UL << (28+port));
	FUNC4(adapter, NETXEN_MAC_ADDR_CNTL_REG, val);

	val = FUNC0(addr);
	FUNC4(adapter, FUNC2(port, 0), val);
	val = FUNC1(addr);
	FUNC4(adapter, FUNC2(port, 0)+4, val);

	FUNC4(adapter, FUNC2(port, 1), 0);
	FUNC4(adapter, FUNC2(port, 1)+4, 0);

	adapter->mc_enabled = 0;
	return 0;
}