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
struct net_device {int dummy; } ;
struct fec_enet_private {int phy_status; } ;

/* Variables and functions */
 int volatile PHY_STAT_ANC ; 
 int volatile PHY_STAT_FAULT ; 
 int volatile PHY_STAT_LINK ; 
 struct fec_enet_private* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(uint mii_reg, struct net_device *dev)
{
	struct fec_enet_private *fep = FUNC0(dev);
	volatile uint *s = &(fep->phy_status);
	uint status;

	status = *s & ~(PHY_STAT_LINK | PHY_STAT_FAULT | PHY_STAT_ANC);

	if (mii_reg & 0x0004)
		status |= PHY_STAT_LINK;
	if (mii_reg & 0x0010)
		status |= PHY_STAT_FAULT;
	if (mii_reg & 0x0020)
		status |= PHY_STAT_ANC;
	*s = status;
}