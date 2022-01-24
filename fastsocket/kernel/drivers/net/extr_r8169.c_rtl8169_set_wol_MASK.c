#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct rtl8169_private {TYPE_1__* pci_dev; int /*<<< orphan*/  features; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  wolopts; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL_FEATURE_WOL ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rtl8169_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_wolinfo *wol)
{
	struct rtl8169_private *tp = FUNC2(dev);

	FUNC3(tp);

	if (wol->wolopts)
		tp->features |= RTL_FEATURE_WOL;
	else
		tp->features &= ~RTL_FEATURE_WOL;
	FUNC0(tp, wol->wolopts);

	FUNC4(tp);

	FUNC1(&tp->pci_dev->dev, wol->wolopts);

	return 0;
}