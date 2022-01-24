#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int /*<<< orphan*/  name; scalar_t__ base_addr; } ;
struct TYPE_3__ {int* phy; size_t phyNum; int /*<<< orphan*/  tlan_tqueue; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 scalar_t__ TLAN_CH_PARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TLAN_DEBUG_GNRL ; 
 int /*<<< orphan*/  TLAN_HC_AD_RST ; 
 int TLAN_HI_IV_MASK ; 
 scalar_t__ TLAN_HOST_CMD ; 
 int /*<<< orphan*/  TLAN_NET_STS ; 
 int TLAN_NET_STS_MIRQ ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int TLAN_TC_SWAPOL ; 
 int /*<<< orphan*/  TLAN_TLPHY_CTL ; 
 int /*<<< orphan*/  TLAN_TLPHY_STS ; 
 int TLAN_TS_POLOK ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ debug ; 
 int FUNC7 (scalar_t__) ; 
 TYPE_1__* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC14( struct net_device *dev, u16 host_int )
{
	TLanPrivateInfo	*priv = FUNC8(dev);
	u32		ack;
	u32		error;
	u8		net_sts;
	u32		phy;
	u16		tlphy_ctl;
	u16		tlphy_sts;

	ack = 1;
	if ( host_int & TLAN_HI_IV_MASK ) {
		FUNC9( dev );
		error = FUNC7( dev->base_addr + TLAN_CH_PARM );
		FUNC12( "TLAN:  %s: Adaptor Error = 0x%x\n", dev->name, error );
		FUNC6( dev, TLAN_RECORD );
		FUNC11( TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD );

		FUNC13(&priv->tlan_tqueue);

		FUNC10(dev);
		ack = 0;
	} else {
		FUNC0( TLAN_DEBUG_GNRL, "%s: Status Check\n", dev->name );
		phy = priv->phy[priv->phyNum];

		net_sts = FUNC1( dev->base_addr, TLAN_NET_STS );
		if ( net_sts ) {
			FUNC2( dev->base_addr, TLAN_NET_STS, net_sts );
			FUNC0( TLAN_DEBUG_GNRL, "%s:    Net_Sts = %x\n",
				  dev->name, (unsigned) net_sts );
		}
		if ( ( net_sts & TLAN_NET_STS_MIRQ ) &&  ( priv->phyNum == 0 ) ) {
			FUNC3( dev, phy, TLAN_TLPHY_STS, &tlphy_sts );
			FUNC3( dev, phy, TLAN_TLPHY_CTL, &tlphy_ctl );
        		if ( ! ( tlphy_sts & TLAN_TS_POLOK ) &&
			     ! ( tlphy_ctl & TLAN_TC_SWAPOL ) ) {
                		tlphy_ctl |= TLAN_TC_SWAPOL;
                		FUNC4( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl);
        		} else if ( ( tlphy_sts & TLAN_TS_POLOK )
				    && ( tlphy_ctl & TLAN_TC_SWAPOL ) ) {
                		tlphy_ctl &= ~TLAN_TC_SWAPOL;
                		FUNC4( dev, phy, TLAN_TLPHY_CTL, tlphy_ctl);
        		}

			if (debug) {
				FUNC5( dev );
			}
		}
	}

	return ack;

}