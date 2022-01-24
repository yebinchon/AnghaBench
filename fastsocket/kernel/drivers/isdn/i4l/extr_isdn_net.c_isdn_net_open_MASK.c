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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int* dev_addr; struct in_device* ip_ptr; } ;
struct in_ifaddr {int /*<<< orphan*/  ifa_local; } ;
struct in_device {struct in_ifaddr* ifa_list; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 struct net_device* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	int i;
	struct net_device *p;
	struct in_device *in_dev;

	/* moved here from isdn_net_reset, because only the master has an
	   interface associated which is supposed to be started. BTW:
	   we need to call netif_start_queue, not netif_wake_queue here */
	FUNC4(dev);

	FUNC2(dev);
	/* Fill in the MAC-level header (not needed, but for compatibility... */
	for (i = 0; i < ETH_ALEN - sizeof(u32); i++)
		dev->dev_addr[i] = 0xfc;
	if ((in_dev = dev->ip_ptr) != NULL) {
		/*
		 *      Any address will do - we take the first
		 */
		struct in_ifaddr *ifa = in_dev->ifa_list;
		if (ifa != NULL)
			FUNC3(dev->dev_addr+2, &ifa->ifa_local, 4);
	}

	/* If this interface has slaves, start them also */
	p = FUNC0(dev);
	if (p) {
		while (p) {
			FUNC2(p);
			p = FUNC0(p);
		}
	}
	FUNC1();
	return 0;
}