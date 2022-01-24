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
typedef  int uint ;
struct net_device {int /*<<< orphan*/  name; } ;
struct fec_enet_private {int phy_status; int /*<<< orphan*/  link; int /*<<< orphan*/  old_link; } ;

/* Variables and functions */
#define  PHY_STAT_100FDX 131 
#define  PHY_STAT_100HDX 130 
#define  PHY_STAT_10FDX 129 
#define  PHY_STAT_10HDX 128 
 int volatile PHY_STAT_ANC ; 
 int volatile PHY_STAT_FAULT ; 
 int volatile PHY_STAT_SPMASK ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC0(dev);
	volatile uint *s = &(fep->phy_status);

	if (!fep->link && !fep->old_link) {
		/* Link is still down - don't print anything */
		return;
	}

	FUNC1("%s: status: ", dev->name);

	if (!fep->link) {
		FUNC1("link down");
	} else {
		FUNC1("link up");

		switch(*s & PHY_STAT_SPMASK) {
		case PHY_STAT_100FDX: FUNC1(", 100MBit Full Duplex"); break;
		case PHY_STAT_100HDX: FUNC1(", 100MBit Half Duplex"); break;
		case PHY_STAT_10FDX: FUNC1(", 10MBit Full Duplex"); break;
		case PHY_STAT_10HDX: FUNC1(", 10MBit Half Duplex"); break;
		default:
			FUNC1(", Unknown speed/duplex");
		}

		if (*s & PHY_STAT_ANC)
			FUNC1(", auto-negotiation complete");
	}

	if (*s & PHY_STAT_FAULT)
		FUNC1(", remote fault");

	FUNC1(".\n");
}