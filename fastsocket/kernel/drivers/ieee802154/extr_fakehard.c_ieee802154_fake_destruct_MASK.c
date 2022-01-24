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
struct wpan_phy {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct wpan_phy* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpan_phy*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpan_phy*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct wpan_phy *phy = FUNC1(dev);

	FUNC3(phy);
	FUNC0(dev);
	FUNC2(phy);
}