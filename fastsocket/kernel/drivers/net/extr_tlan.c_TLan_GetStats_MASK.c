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
struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {scalar_t__ txList; scalar_t__ rxList; int /*<<< orphan*/  txBusyCount; int /*<<< orphan*/  rxEocCount; } ;
typedef  TYPE_1__ TLanPrivateInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLAN_DEBUG_GNRL ; 
 int TLAN_DEBUG_LIST ; 
 int /*<<< orphan*/  TLAN_DEBUG_RX ; 
 int /*<<< orphan*/  TLAN_DEBUG_TX ; 
 int TLAN_NUM_RX_LISTS ; 
 int TLAN_NUM_TX_LISTS ; 
 int /*<<< orphan*/  TLAN_RECORD ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int debug ; 
 TYPE_1__* FUNC5 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC6( struct net_device *dev )
{
	TLanPrivateInfo	*priv = FUNC5(dev);
	int i;

	/* Should only read stats if open ? */
	FUNC4( dev, TLAN_RECORD );

	FUNC0( TLAN_DEBUG_RX, "RECEIVE:  %s EOC count = %d\n", dev->name,
		  priv->rxEocCount );
	FUNC0( TLAN_DEBUG_TX, "TRANSMIT:  %s Busy count = %d\n", dev->name,
		  priv->txBusyCount );
	if ( debug & TLAN_DEBUG_GNRL ) {
		FUNC2( dev->base_addr );
		FUNC1( dev );
	}
	if ( debug & TLAN_DEBUG_LIST ) {
		for ( i = 0; i < TLAN_NUM_RX_LISTS; i++ )
			FUNC3( priv->rxList + i, "RX", i );
		for ( i = 0; i < TLAN_NUM_TX_LISTS; i++ )
			FUNC3( priv->txList + i, "TX", i );
	}

	return &dev->stats;

}