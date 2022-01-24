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
typedef  void* u8 ;
struct wpan_phy {int /*<<< orphan*/  pib_lock; void* current_page; void* current_channel; } ;
struct net_device {int dummy; } ;
struct ieee802154_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE802154_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct wpan_phy* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
		struct ieee802154_addr *addr, u8 channel, u8 page, u8 cap)
{
	struct wpan_phy *phy = FUNC4(dev);

	FUNC2(&phy->pib_lock);
	phy->current_channel = channel;
	phy->current_page = page;
	FUNC3(&phy->pib_lock);

	/* We simply emulate it here */
	return FUNC1(dev, FUNC0(dev),
			IEEE802154_SUCCESS);
}