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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int base_addr; } ;
struct TYPE_5__ {int tlanRev; int aui; scalar_t__ duplex; scalar_t__ phyNum; TYPE_1__* adapter; int /*<<< orphan*/  tlanFullDuplex; scalar_t__ phyOnline; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TLAN_ACOMMIT ; 
 int TLAN_ADAPTER_BIT_RATE_PHY ; 
 int TLAN_ADAPTER_UNMANAGED_PHY ; 
 int TLAN_AREG_0 ; 
 int TLAN_DIO_ADR ; 
 int TLAN_DIO_DATA ; 
 scalar_t__ TLAN_DUPLEX_FULL ; 
 int TLAN_HASH_2 ; 
 int TLAN_HC_AD_RST ; 
 int TLAN_HC_INT_OFF ; 
 int TLAN_HC_LD_THR ; 
 int TLAN_HC_LD_TMR ; 
 int TLAN_HOST_CMD ; 
 int TLAN_ID_RX_EOC ; 
 int TLAN_ID_TX_EOC ; 
 int /*<<< orphan*/  TLAN_INT_DIS ; 
 int TLAN_NET_CFG_1CHAN ; 
 int TLAN_NET_CFG_1FRAG ; 
 int TLAN_NET_CFG_BIT ; 
 int TLAN_NET_CFG_PHY_EN ; 
 int /*<<< orphan*/  TLAN_NET_CONFIG ; 
 int TLAN_NET_SIO ; 
 int /*<<< orphan*/  TLAN_NET_SIO_NMRST ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC7 (int) ; 
 TYPE_2__* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC8(dev);
	int		i;
	u32		addr;
	u32		data;
	u8		data8;

	priv->tlanFullDuplex = FALSE;
	priv->phyOnline=0;
	FUNC9(dev);

/*  1.	Assert reset bit. */

	data = FUNC7(dev->base_addr + TLAN_HOST_CMD);
	data |= TLAN_HC_AD_RST;
	FUNC10(data, dev->base_addr + TLAN_HOST_CMD);

	FUNC12(1000);

/*  2.	Turn off interrupts. ( Probably isn't necessary ) */

	data = FUNC7(dev->base_addr + TLAN_HOST_CMD);
	data |= TLAN_HC_INT_OFF;
	FUNC10(data, dev->base_addr + TLAN_HOST_CMD);

/*  3.	Clear AREGs and HASHs. */

 	for ( i = TLAN_AREG_0; i <= TLAN_HASH_2; i += 4 ) {
		FUNC1( dev->base_addr, (u16) i, 0 );
	}

/*  4.	Setup NetConfig register. */

	data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN | TLAN_NET_CFG_PHY_EN;
	FUNC0( dev->base_addr, TLAN_NET_CONFIG, (u16) data );

/*  5.	Load Ld_Tmr and Ld_Thr in HOST_CMD. */

 	FUNC10( TLAN_HC_LD_TMR | 0x3f, dev->base_addr + TLAN_HOST_CMD );
 	FUNC10( TLAN_HC_LD_THR | 0x9, dev->base_addr + TLAN_HOST_CMD );

/*  6.	Unreset the MII by setting NMRST (in NetSio) to 1. */

	FUNC11( TLAN_NET_SIO, dev->base_addr + TLAN_DIO_ADR );
	addr = dev->base_addr + TLAN_DIO_DATA + TLAN_NET_SIO;
	FUNC6( TLAN_NET_SIO_NMRST, addr );

/*  7.	Setup the remaining registers. */

	if ( priv->tlanRev >= 0x30 ) {
		data8 = TLAN_ID_TX_EOC | TLAN_ID_RX_EOC;
		FUNC2( dev->base_addr, TLAN_INT_DIS, data8 );
	}
	FUNC4( dev );
	data = TLAN_NET_CFG_1FRAG | TLAN_NET_CFG_1CHAN;

	if ( priv->adapter->flags & TLAN_ADAPTER_BIT_RATE_PHY ) {
		data |= TLAN_NET_CFG_BIT;
		if ( priv->aui == 1 ) {
			FUNC2( dev->base_addr, TLAN_ACOMMIT, 0x0a );
		} else if ( priv->duplex == TLAN_DUPLEX_FULL ) {
			FUNC2( dev->base_addr, TLAN_ACOMMIT, 0x00 );
			priv->tlanFullDuplex = TRUE;
		} else {
			FUNC2( dev->base_addr, TLAN_ACOMMIT, 0x08 );
		}
	}

	if ( priv->phyNum == 0 ) {
		data |= TLAN_NET_CFG_PHY_EN;
	}
	FUNC0( dev->base_addr, TLAN_NET_CONFIG, (u16) data );

	if ( priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY ) {
		FUNC3( dev );
	} else {
		FUNC5( dev );
	}

}