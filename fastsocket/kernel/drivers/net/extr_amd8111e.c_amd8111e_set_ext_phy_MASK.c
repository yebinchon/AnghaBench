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
struct net_device {int dummy; } ;
struct amd8111e_priv {int ext_phy_option; int /*<<< orphan*/  ext_phy_addr; } ;

/* Variables and functions */
 int ADVERTISE_100BASE4 ; 
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_10FULL ; 
 int ADVERTISE_10HALF ; 
 int ADVERTISE_ALL ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
#define  SPEED100_FULL 132 
#define  SPEED100_HALF 131 
#define  SPEED10_FULL 130 
#define  SPEED10_HALF 129 
#define  SPEED_AUTONEG 128 
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct amd8111e_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct amd8111e_priv *lp = FUNC2(dev);
	u32 bmcr,advert,tmp;

	/* Determine mii register values to set the speed */
	advert = FUNC0(dev, lp->ext_phy_addr, MII_ADVERTISE);
	tmp = advert & ~(ADVERTISE_ALL | ADVERTISE_100BASE4);
	switch (lp->ext_phy_option){

		default:
		case SPEED_AUTONEG: /* advertise all values */
			tmp |= ( ADVERTISE_10HALF|ADVERTISE_10FULL|
				ADVERTISE_100HALF|ADVERTISE_100FULL) ;
			break;
		case SPEED10_HALF:
			tmp |= ADVERTISE_10HALF;
			break;
		case SPEED10_FULL:
			tmp |= ADVERTISE_10FULL;
			break;
		case SPEED100_HALF:
			tmp |= ADVERTISE_100HALF;
			break;
		case SPEED100_FULL:
			tmp |= ADVERTISE_100FULL;
			break;
	}

	if(advert != tmp)
		FUNC1(dev, lp->ext_phy_addr, MII_ADVERTISE, tmp);
	/* Restart auto negotiation */
	bmcr = FUNC0(dev, lp->ext_phy_addr, MII_BMCR);
	bmcr |= (BMCR_ANENABLE | BMCR_ANRESTART);
	FUNC1(dev, lp->ext_phy_addr, MII_BMCR, bmcr);

}