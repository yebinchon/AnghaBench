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
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_speed; scalar_t__ hwp; scalar_t__ link; } ;

/* Variables and functions */
 scalar_t__ FEC_ECNTRL ; 
 int FEC_ENET_GRA ; 
 int FEC_ENET_MII ; 
 scalar_t__ FEC_IEVENT ; 
 scalar_t__ FEC_IMASK ; 
 scalar_t__ FEC_MII_SPEED ; 
 scalar_t__ FEC_X_CNTRL ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC0(dev);

	/* We cannot expect a graceful transmit stop without link !!! */
	if (fep->link) {
		FUNC4(1, fep->hwp + FEC_X_CNTRL); /* Graceful transmit stop */
		FUNC3(10);
		if (!(FUNC2(fep->hwp + FEC_IEVENT) & FEC_ENET_GRA))
			FUNC1("fec_stop : Graceful transmit stop did not complete !\n");
	}

	/* Whack a reset.  We should wait for this. */
	FUNC4(1, fep->hwp + FEC_ECNTRL);
	FUNC3(10);

	/* Clear outstanding MII command interrupts. */
	FUNC4(FEC_ENET_MII, fep->hwp + FEC_IEVENT);

	FUNC4(FEC_ENET_MII, fep->hwp + FEC_IMASK);
	FUNC4(fep->phy_speed, fep->hwp + FEC_MII_SPEED);
}