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
struct net_device {int* dev_addr; struct in_device* ip_ptr; TYPE_1__* ml_priv; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;
struct TYPE_2__ {int /*<<< orphan*/ * mac_addr; } ;
typedef  TYPE_1__ hysdn_card ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *dev)
{
	struct in_device *in_dev;
	hysdn_card *card = dev->ml_priv;
	int i;

	FUNC1(dev);	/* start tx-queueing */

	/* Fill in the MAC-level header (if not already set) */
	if (!card->mac_addr[0]) {
		for (i = 0; i < ETH_ALEN; i++)
			dev->dev_addr[i] = 0xfc;
		if ((in_dev = dev->ip_ptr) != NULL) {
			struct in_ifaddr *ifa = in_dev->ifa_list;
			if (ifa != NULL)
				FUNC0(dev->dev_addr + (ETH_ALEN - sizeof(ifa->ifa_local)), &ifa->ifa_local, sizeof(ifa->ifa_local));
		}
	} else
		FUNC0(dev->dev_addr, card->mac_addr, ETH_ALEN);

	return (0);
}