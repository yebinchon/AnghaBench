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
typedef  scalar_t__ u16 ;
struct net_device {scalar_t__ name; } ;
struct TYPE_5__ {scalar_t__* phy; size_t phyNum; TYPE_1__* adapter; } ;
struct TYPE_4__ {int flags; } ;
typedef  TYPE_2__ TLanPrivateInfo ;

/* Variables and functions */
 int TLAN_ADAPTER_UNMANAGED_PHY ; 
 scalar_t__ TLAN_PHY_MAX_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,scalar_t__,scalar_t__,scalar_t__*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3( struct net_device *dev )
{
	TLanPrivateInfo *priv = FUNC1(dev);
	u16 i, data0, data1, data2, data3, phy;

	phy = priv->phy[priv->phyNum];

	if ( priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY ) {
		FUNC2( "TLAN:   Device %s, Unmanaged PHY.\n", dev->name );
	} else if ( phy <= TLAN_PHY_MAX_ADDR ) {
		FUNC2( "TLAN:   Device %s, PHY 0x%02x.\n", dev->name, phy );
		FUNC2( "TLAN:      Off.  +0     +1     +2     +3 \n" );
                for ( i = 0; i < 0x20; i+= 4 ) {
			FUNC2( "TLAN:      0x%02x", i );
			FUNC0( dev, phy, i, &data0 );
			FUNC2( " 0x%04hx", data0 );
			FUNC0( dev, phy, i + 1, &data1 );
			FUNC2( " 0x%04hx", data1 );
			FUNC0( dev, phy, i + 2, &data2 );
			FUNC2( " 0x%04hx", data2 );
			FUNC0( dev, phy, i + 3, &data3 );
			FUNC2( " 0x%04hx\n", data3 );
		}
	} else {
		FUNC2( "TLAN:   Device %s, Invalid PHY.\n", dev->name );
	}

}