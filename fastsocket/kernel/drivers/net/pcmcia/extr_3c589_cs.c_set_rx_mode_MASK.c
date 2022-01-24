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
typedef  int u16 ;
struct net_device {unsigned int base_addr; int flags; scalar_t__ mc_count; } ;

/* Variables and functions */
 scalar_t__ EL3_CMD ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int RxBroadcast ; 
 int RxMulticast ; 
 int RxProm ; 
 int RxStation ; 
 int SetRxFilter ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    u16 opts = SetRxFilter | RxStation | RxBroadcast;

    if (dev->flags & IFF_PROMISC)
	opts |= RxMulticast | RxProm;
    else if (dev->mc_count || (dev->flags & IFF_ALLMULTI))
	opts |= RxMulticast;
    FUNC0(opts, ioaddr + EL3_CMD);
}