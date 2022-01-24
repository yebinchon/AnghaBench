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
struct spider_net_card {int dummy; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SPIDER_NET_GMACUNIMACL ; 
 int /*<<< orphan*/  SPIDER_NET_GMACUNIMACU ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 struct spider_net_card* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct spider_net_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct net_device *netdev)
{
	struct spider_net_card *card = FUNC1(netdev);
	u32 macl, macu;

	macl = FUNC2(card, SPIDER_NET_GMACUNIMACL);
	macu = FUNC2(card, SPIDER_NET_GMACUNIMACU);

	netdev->dev_addr[0] = (macu >> 24) & 0xff;
	netdev->dev_addr[1] = (macu >> 16) & 0xff;
	netdev->dev_addr[2] = (macu >> 8) & 0xff;
	netdev->dev_addr[3] = macu & 0xff;
	netdev->dev_addr[4] = (macl >> 8) & 0xff;
	netdev->dev_addr[5] = macl & 0xff;

	if (!FUNC0(&netdev->dev_addr[0]))
		return -EINVAL;

	return 0;
}