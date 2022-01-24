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
typedef  int /*<<< orphan*/  u8 ;
struct nphy_txgains {int dummy; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int FUNC0 (struct b43_wldev*,struct nphy_txgains,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct b43_wldev*,struct nphy_txgains,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct b43_wldev *dev,
			struct nphy_txgains target, u8 type, bool debug)
{
	if (dev->phy.rev >= 3)
		return FUNC1(dev, target, type, debug);
	else
		return FUNC0(dev, target, type, debug);
}