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
struct net_device {int flags; scalar_t__ mc_count; } ;
struct kaweth_device {int packet_filter_bitmap; } ;
typedef  int __u16 ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int KAWETH_PACKET_FILTER_ALL_MULTICAST ; 
 int KAWETH_PACKET_FILTER_BROADCAST ; 
 int KAWETH_PACKET_FILTER_DIRECTED ; 
 int KAWETH_PACKET_FILTER_MULTICAST ; 
 int KAWETH_PACKET_FILTER_PROMISCUOUS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct kaweth_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *net)
{
	struct kaweth_device *kaweth = FUNC1(net);

	__u16 packet_filter_bitmap = KAWETH_PACKET_FILTER_DIRECTED |
                                     KAWETH_PACKET_FILTER_BROADCAST |
		                     KAWETH_PACKET_FILTER_MULTICAST;

	FUNC0("Setting Rx mode to %d", packet_filter_bitmap);

	FUNC2(net);

	if (net->flags & IFF_PROMISC) {
		packet_filter_bitmap |= KAWETH_PACKET_FILTER_PROMISCUOUS;
	}
	else if ((net->mc_count) || (net->flags & IFF_ALLMULTI)) {
		packet_filter_bitmap |= KAWETH_PACKET_FILTER_ALL_MULTICAST;
	}

	kaweth->packet_filter_bitmap = packet_filter_bitmap;
	FUNC3(net);
}