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
struct net_device {int base_addr; int if_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EL3_CMD ; 
 int MEDIA_TP ; 
 int RxDisable ; 
 int SetIntrEnb ; 
 int StatsDisable ; 
 int StopCoax ; 
 int TxDisable ; 
 scalar_t__ WN4_MEDIA ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	int ioaddr = dev->base_addr;

	FUNC2(dev);

	/* Turn off statistics ASAP.  We update lp->stats below. */
	FUNC3(StatsDisable, ioaddr + EL3_CMD);

	/* Disable the receiver and transmitter. */
	FUNC3(RxDisable, ioaddr + EL3_CMD);
	FUNC3(TxDisable, ioaddr + EL3_CMD);

	if (dev->if_port == 3)
		/* Turn off thinnet power.  Green! */
		FUNC3(StopCoax, ioaddr + EL3_CMD);
	else if (dev->if_port == 0) {
		/* Disable link beat and jabber, if_port may change here next open(). */
		FUNC0(4);
		FUNC3(FUNC1(ioaddr + WN4_MEDIA) & ~MEDIA_TP, ioaddr + WN4_MEDIA);
	}

	FUNC3(SetIntrEnb | 0x0000, ioaddr + EL3_CMD);

	FUNC4(dev);
}