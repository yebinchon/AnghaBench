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
typedef  void* u32 ;
struct smsc9420_pdata {struct phy_device* phy_dev; } ;
struct phy_device {int /*<<< orphan*/  addr; int /*<<< orphan*/  bus; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {void* version; } ;

/* Variables and functions */
 unsigned int ID_REV ; 
 struct smsc9420_pdata* FUNC0 (struct net_device*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 void* FUNC2 (struct smsc9420_pdata*,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct net_device *dev, struct ethtool_regs *regs,
			 void *buf)
{
	struct smsc9420_pdata *pd = FUNC0(dev);
	struct phy_device *phy_dev = pd->phy_dev;
	unsigned int i, j = 0;
	u32 *data = buf;

	regs->version = FUNC2(pd, ID_REV);
	for (i = 0; i < 0x100; i += (sizeof(u32)))
		data[j++] = FUNC2(pd, i);

	// cannot read phy registers if the net device is down
	if (!phy_dev)
		return;

	for (i = 0; i <= 31; i++)
		data[j++] = FUNC1(phy_dev->bus, phy_dev->addr, i);
}