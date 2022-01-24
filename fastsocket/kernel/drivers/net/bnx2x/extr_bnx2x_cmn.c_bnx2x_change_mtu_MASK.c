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
struct net_device {int mtu; } ;
struct bnx2x {scalar_t__ recovery_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ BNX2X_RECOVERY_DONE ; 
 int EAGAIN ; 
 int EINVAL ; 
 scalar_t__ ETH_HLEN ; 
 int ETH_MAX_JUMBO_PACKET_SIZE ; 
 scalar_t__ ETH_MIN_PACKET_SIZE ; 
 int FUNC1 (struct net_device*) ; 
 struct bnx2x* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *dev, int new_mtu)
{
	struct bnx2x *bp = FUNC2(dev);

	if (bp->recovery_state != BNX2X_RECOVERY_DONE) {
		FUNC0("Can't perform change MTU during parity recovery\n");
		return -EAGAIN;
	}

	if ((new_mtu > ETH_MAX_JUMBO_PACKET_SIZE) ||
	    ((new_mtu + ETH_HLEN) < ETH_MIN_PACKET_SIZE)) {
		FUNC0("Can't support requested MTU size\n");
		return -EINVAL;
	}

	/* This does not race with packet allocation
	 * because the actual alloc size is
	 * only updated as part of load
	 */
	dev->mtu = new_mtu;

	return FUNC1(dev);
}