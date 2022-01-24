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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ base_addr; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {size_t phyNum; int link; int phyOnline; int rxListDMA; scalar_t__ aui; TYPE_1__* adapter; scalar_t__ tlanFullDuplex; int /*<<< orphan*/ * phy; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ TLanPrivateInfo ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  MII_AN_LPA ; 
 int /*<<< orphan*/  MII_GEN_ID_HI ; 
 int /*<<< orphan*/  MII_GEN_ID_LO ; 
 int /*<<< orphan*/  MII_GEN_STS ; 
 scalar_t__ MII_GS_LINK ; 
 scalar_t__ NAT_SEM_ID1 ; 
 scalar_t__ NAT_SEM_ID2 ; 
 int TLAN_ADAPTER_UNMANAGED_PHY ; 
 scalar_t__ TLAN_CH_PARM ; 
 int TLAN_DEBUG_PROBE ; 
 int TLAN_HC_GO ; 
 int TLAN_HC_INT_ON ; 
 int TLAN_HC_REQ_INT ; 
 int TLAN_HC_RT ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int TLAN_LED_LINK ; 
 int /*<<< orphan*/  TLAN_LED_REG ; 
 int /*<<< orphan*/  TLAN_MAX_RX ; 
 int /*<<< orphan*/  TLAN_NET_CMD ; 
 int TLAN_NET_CMD_DUPLEX ; 
 int TLAN_NET_CMD_NRESET ; 
 int TLAN_NET_CMD_NWRAP ; 
 int /*<<< orphan*/  TLAN_NET_MASK ; 
 int TLAN_NET_MASK_MASK4 ; 
 int TLAN_NET_MASK_MASK5 ; 
 int TLAN_NET_MASK_MASK7 ; 
 int /*<<< orphan*/  TLAN_NET_SIO ; 
 int TLAN_NET_SIO_MINTEN ; 
 scalar_t__ TLAN_PHY_AN_EN_STAT ; 
 scalar_t__ TLAN_PHY_DUPLEX_FULL ; 
 scalar_t__ TLAN_PHY_SPEED_100 ; 
 scalar_t__ TLAN_TC_INTEN ; 
 int /*<<< orphan*/  TLAN_TIMER_FINISH_RESET ; 
 int /*<<< orphan*/  TLAN_TIMER_LINK_BEAT ; 
 int /*<<< orphan*/  TLAN_TLPHY_CTL ; 
 int /*<<< orphan*/  TLAN_TLPHY_PAR ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int debug ; 
 int /*<<< orphan*/ * media ; 
 TYPE_2__* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static void
FUNC14( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC8(dev);
	u8		data;
	u32		phy;
	u8		sio;
	u16		status;
	u16		partner;
	u16		tlphy_ctl;
	u16 		tlphy_par;
	u16		tlphy_id1, tlphy_id2;
	int 		i;

	phy = priv->phy[priv->phyNum];

	data = TLAN_NET_CMD_NRESET | TLAN_NET_CMD_NWRAP;
	if ( priv->tlanFullDuplex ) {
		data |= TLAN_NET_CMD_DUPLEX;
	}
	FUNC2( dev->base_addr, TLAN_NET_CMD, data );
	data = TLAN_NET_MASK_MASK4 | TLAN_NET_MASK_MASK5;
	if ( priv->phyNum == 0 ) {
		data |= TLAN_NET_MASK_MASK7;
	}
	FUNC2( dev->base_addr, TLAN_NET_MASK, data );
	FUNC1( dev->base_addr, TLAN_MAX_RX, ((1536)+7)&~7 );
	FUNC3( dev, phy, MII_GEN_ID_HI, &tlphy_id1 );
	FUNC3( dev, phy, MII_GEN_ID_LO, &tlphy_id2 );

	if ( ( priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY ) ||
	     ( priv->aui ) ) {
		status = MII_GS_LINK;
		FUNC12( "TLAN:  %s: Link forced.\n", dev->name );
	} else {
		FUNC3( dev, phy, MII_GEN_STS, &status );
		FUNC13( 1000 );
		FUNC3( dev, phy, MII_GEN_STS, &status );
		if ( (status & MII_GS_LINK) &&
		     /* We only support link info on Nat.Sem. PHY's */
			(tlphy_id1 == NAT_SEM_ID1) &&
			(tlphy_id2 == NAT_SEM_ID2) ) {
			FUNC3( dev, phy, MII_AN_LPA, &partner );
			FUNC3( dev, phy, TLAN_TLPHY_PAR, &tlphy_par );

			FUNC12( "TLAN: %s: Link active with ", dev->name );
			if (!(tlphy_par & TLAN_PHY_AN_EN_STAT)) {
			      	 FUNC12( "forced 10%sMbps %s-Duplex\n",
					 tlphy_par & TLAN_PHY_SPEED_100 ? "" : "0",
					 tlphy_par & TLAN_PHY_DUPLEX_FULL ? "Full" : "Half");
			} else {
				FUNC12( "AutoNegotiation enabled, at 10%sMbps %s-Duplex\n",
					tlphy_par & TLAN_PHY_SPEED_100 ? "" : "0",
					tlphy_par & TLAN_PHY_DUPLEX_FULL ? "Full" : "Half");
				FUNC12("TLAN: Partner capability: ");
					for (i = 5; i <= 10; i++)
						if (partner & (1<<i))
							FUNC12("%s",media[i-5]);
				FUNC12("\n");
			}

			FUNC2( dev->base_addr, TLAN_LED_REG, TLAN_LED_LINK );
#ifdef MONITOR
			/* We have link beat..for now anyway */
	        	priv->link = 1;
	        	/*Enabling link beat monitoring */
			TLan_SetTimer( dev, (10*HZ), TLAN_TIMER_LINK_BEAT );
#endif
		} else if (status & MII_GS_LINK)  {
			FUNC12( "TLAN: %s: Link active\n", dev->name );
			FUNC2( dev->base_addr, TLAN_LED_REG, TLAN_LED_LINK );
		}
	}

	if ( priv->phyNum == 0 ) {
        	FUNC3( dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl );
        	tlphy_ctl |= TLAN_TC_INTEN;
        	FUNC4( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl );
        	sio = FUNC0( dev->base_addr, TLAN_NET_SIO );
        	sio |= TLAN_NET_SIO_MINTEN;
        	FUNC2( dev->base_addr, TLAN_NET_SIO, sio );
	}

	if ( status & MII_GS_LINK ) {
		FUNC5( dev, 0, dev->dev_addr );
		priv->phyOnline = 1;
		FUNC10( ( TLAN_HC_INT_ON >> 8 ), dev->base_addr + TLAN_HOST_CMD + 1 );
		if ( debug >= 1 && debug != TLAN_DEBUG_PROBE ) {
			FUNC10( ( TLAN_HC_REQ_INT >> 8 ), dev->base_addr + TLAN_HOST_CMD + 1 );
		}
		FUNC11( priv->rxListDMA, dev->base_addr + TLAN_CH_PARM );
		FUNC11( TLAN_HC_GO | TLAN_HC_RT, dev->base_addr + TLAN_HOST_CMD );
		FUNC9(dev);
	} else {
		FUNC12( "TLAN: %s: Link inactive, will retry in 10 secs...\n",
			dev->name );
		FUNC7( dev, (10*HZ), TLAN_TIMER_FINISH_RESET );
		return;
	}
	FUNC6(dev);

}