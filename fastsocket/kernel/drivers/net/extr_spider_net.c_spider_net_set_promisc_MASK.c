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
typedef  int u32 ;
struct spider_net_card {struct net_device* netdev; } ;
struct net_device {int flags; int* dev_addr; } ;
typedef  int /*<<< orphan*/  macl ;

/* Variables and functions */
 int IFF_PROMISC ; 
 scalar_t__ SPIDER_NET_GMRUA0FIL15R ; 
 scalar_t__ SPIDER_NET_GMRUAFILnR ; 
 int SPIDER_NET_NONPROMISC_VALUE ; 
 int SPIDER_NET_PROMISC_VALUE ; 
 int SPIDER_NET_UA_DESCR_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spider_net_card*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct spider_net_card *card)
{
	u32 macu, macl;
	struct net_device *netdev = card->netdev;

	if (netdev->flags & IFF_PROMISC) {
		/* clear destination entry 0 */
		FUNC1(card, SPIDER_NET_GMRUAFILnR, 0);
		FUNC1(card, SPIDER_NET_GMRUAFILnR + 0x04, 0);
		FUNC1(card, SPIDER_NET_GMRUA0FIL15R,
				     SPIDER_NET_PROMISC_VALUE);
	} else {
		macu = netdev->dev_addr[0];
		macu <<= 8;
		macu |= netdev->dev_addr[1];
		FUNC0(&macl, &netdev->dev_addr[2], sizeof(macl));

		macu |= SPIDER_NET_UA_DESCR_VALUE;
		FUNC1(card, SPIDER_NET_GMRUAFILnR, macu);
		FUNC1(card, SPIDER_NET_GMRUAFILnR + 0x04, macl);
		FUNC1(card, SPIDER_NET_GMRUA0FIL15R,
				     SPIDER_NET_NONPROMISC_VALUE);
	}
}