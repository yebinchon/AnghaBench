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
typedef  unsigned long u32 ;
struct qlcnic_adapter {unsigned long portnum; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; int /*<<< orphan*/  supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_WOL_CONFIG ; 
 int /*<<< orphan*/  QLCNIC_WOL_CONFIG_NV ; 
 unsigned long FUNC0 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAKE_MAGIC ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct qlcnic_adapter *adapter = FUNC1(dev);
	u32 wol_cfg;

	if (FUNC2(adapter))
		return;
	wol->supported = 0;
	wol->wolopts = 0;

	wol_cfg = FUNC0(adapter, QLCNIC_WOL_CONFIG_NV);
	if (wol_cfg & (1UL << adapter->portnum))
		wol->supported |= WAKE_MAGIC;

	wol_cfg = FUNC0(adapter, QLCNIC_WOL_CONFIG);
	if (wol_cfg & (1UL << adapter->portnum))
		wol->wolopts |= WAKE_MAGIC;
}