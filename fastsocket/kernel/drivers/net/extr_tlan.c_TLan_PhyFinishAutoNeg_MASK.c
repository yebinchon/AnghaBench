#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int* phy; size_t phyNum; scalar_t__ duplex; TYPE_1__* adapter; void* tlanFullDuplex; int /*<<< orphan*/  neg_be_verbose; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ TLanPrivateInfo ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MII_AN_ADV ; 
 int /*<<< orphan*/  MII_AN_LPA ; 
 int MII_GC_AUTOENB ; 
 int MII_GC_DUPLEX ; 
 int /*<<< orphan*/  MII_GEN_CTL ; 
 int /*<<< orphan*/  MII_GEN_STS ; 
 int MII_GS_AUTOCMPLT ; 
 int TLAN_ADAPTER_USE_INTERN_10 ; 
 scalar_t__ TLAN_DUPLEX_FULL ; 
 int TLAN_NET_CFG_1CHAN ; 
 int TLAN_NET_CFG_1FRAG ; 
 int TLAN_NET_CFG_PHY_EN ; 
 int /*<<< orphan*/  TLAN_NET_CONFIG ; 
 int /*<<< orphan*/  TLAN_TIMER_FINISH_RESET ; 
 int /*<<< orphan*/  TLAN_TIMER_PHY_FINISH_AN ; 
 int /*<<< orphan*/  TLAN_TIMER_PHY_PDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 void* TRUE ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC4(dev);
	u16		an_adv;
	u16		an_lpa;
	u16		data;
	u16		mode;
	u16		phy;
	u16		status;

	phy = priv->phy[priv->phyNum];

	FUNC1( dev, phy, MII_GEN_STS, &status );
	FUNC7( 1000 );
	FUNC1( dev, phy, MII_GEN_STS, &status );

	if ( ! ( status & MII_GS_AUTOCMPLT ) ) {
		/* Wait for 8 sec to give the process
		 * more time.  Perhaps we should fail after a while.
		 */
		 if (!priv->neg_be_verbose++) {
			 FUNC5("TLAN:  Giving autonegotiation more time.\n");
		 	 FUNC5("TLAN:  Please check that your adapter has\n");
		 	 FUNC5("TLAN:  been properly connected to a HUB or Switch.\n");
			 FUNC5("TLAN:  Trying to establish link in the background...\n");
		 }
		FUNC3( dev, (8*HZ), TLAN_TIMER_PHY_FINISH_AN );
		return;
	}

	FUNC6( "TLAN: %s: Autonegotiation complete.\n", dev->name );
	FUNC1( dev, phy, MII_AN_ADV, &an_adv );
	FUNC1( dev, phy, MII_AN_LPA, &an_lpa );
	mode = an_adv & an_lpa & 0x03E0;
	if ( mode & 0x0100 ) {
		priv->tlanFullDuplex = TRUE;
	} else if ( ! ( mode & 0x0080 ) && ( mode & 0x0040 ) ) {
		priv->tlanFullDuplex = TRUE;
	}

	if ( ( ! ( mode & 0x0180 ) ) &&
	     ( priv->adapter->flags & TLAN_ADAPTER_USE_INTERN_10 ) &&
	     ( priv->phyNum != 0 ) ) {
		priv->phyNum = 0;
		data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN | TLAN_NET_CFG_PHY_EN;
		FUNC0( dev->base_addr, TLAN_NET_CONFIG, data );
		FUNC3( dev, (400*HZ/1000), TLAN_TIMER_PHY_PDOWN );
		return;
	}

	if ( priv->phyNum == 0 ) {
		if ( ( priv->duplex == TLAN_DUPLEX_FULL ) ||
		     ( an_adv & an_lpa & 0x0040 ) ) {
			FUNC2( dev, phy, MII_GEN_CTL,
					  MII_GC_AUTOENB | MII_GC_DUPLEX );
			FUNC5("TLAN:  Starting internal PHY with FULL-DUPLEX\n" );
		} else {
			FUNC2( dev, phy, MII_GEN_CTL, MII_GC_AUTOENB );
			FUNC5( "TLAN:  Starting internal PHY with HALF-DUPLEX\n" );
		}
	}

	/* Wait for 100 ms.  No reason in partiticular.
	 */
	FUNC3( dev, (HZ/10), TLAN_TIMER_FINISH_RESET );

}